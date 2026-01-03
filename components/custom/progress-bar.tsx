import React, {
  createContext,
  PropsWithChildren,
  useContext,
  useEffect,
  useState,
} from "react";
import { Progress, ProgressFilledTrack } from "../ui/progress";
import Animated, {
  useAnimatedStyle,
  useSharedValue,
  withTiming,
} from "react-native-reanimated";

type ProgressBarProps = {
  progress: number;
  setProgress: (val: number) => void;
};

const ProgressContext = createContext<ProgressBarProps>({
  progress: 0,
  setProgress: () => {},
});

export const ProgressProvider = ({ children }: PropsWithChildren<{}>) => {
  const [progress, setProgress] = useState(0);
  return (
    <ProgressContext.Provider value={{ progress, setProgress }}>
      {children}
    </ProgressContext.Provider>
  );
};

export const useProgress = () => useContext(ProgressContext);

const AnimatedTrack = Animated.createAnimatedComponent(ProgressFilledTrack);

export function ProgressBar() {
  const { progress } = useProgress();
  const width = useSharedValue(0);

  useEffect(() => {
    width.value = withTiming(progress * 100, { duration: 500 });
  }, [progress]);
  const animatedStyle = useAnimatedStyle(() => ({
    width: `${width.value}%`,
  }));

  return (
    <Progress value={width.value} size="md" className="w-full">
      <AnimatedTrack style={animatedStyle} />
    </Progress>
  );
}
