// The 'goodmorninghelloworld' program.
program goodmorninghelloworld.aleo {
    transition main(public e: u32, f: u32) -> u32 {
        let j: u32 = e + f;
        return j;
    }
}
