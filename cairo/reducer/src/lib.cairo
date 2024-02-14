
pub mod matvecdata_reducer;
pub mod matvectmult;
use cairoreduce::matvecdata_reducer::inter_val::inter_result;
use cairoreduce::matvectmult::reducer_alg::reducer;

//This script will return the mapper result

fn main(job_id: u32) {
  
    let map_res: Array<(u32, felt252)> = inter_result();

    // Reducer Job
    // let job_id: u32=2;
    let (k2,v2): (u32, felt252) = reducer(job_id, @map_res);    
    println!("K/V pair for reducer is({},{})",k2,v2);

}
