import React from "react";
import BenchMap from "../map/bench_map";
import BenchIndex from "./bench_index";

class Search extends React.Component{

  render(){
    const{benches, fetchBenches, updateFilter} = this.props;
    return (
      <div>
        <BenchMap 
          benches={benches} 
          fetchBenches={fetchBenches} 
          updateFilter={updateFilter}
        />
        <BenchIndex benches={benches}  />
      </div>
    )
  }
};

export default Search;