import { create } from "zustand";


export type SignupStateData = {
    userId: string;
    access_token: string | undefined;
    email: string;
};

export interface SignupState {
    data: SignupStateData,
    setState: (value: SignupStateData) => void;
}

export const useSignupState = create<SignupState>((set) => ({
    data: {
        userId: "",
        email: "",
        access_token: undefined
    },
    setState: (value) => set(curr => ({ ...curr, data: value })),
}));
