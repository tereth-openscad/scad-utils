// List helpers
function flatten(list) = [ for (i = list, v = i) v ];
function range(r) = [ for(x=r) x ];
function reverse(list) = [for (i = [len(list)-1:-1:0]) list[i]];
// Extract a subarray from index begin (inclusive) to end (exclusive)
function subarray(arr,begin=0,end=-1) = [
	let(end = end < 0 ? len(arr) : end)
		for (i = [begin : 1 : end-1])
			arr[i]
];

// Returns a copy of arr with the element at index i set to x
function set(arr,i,x) = [
	for (i_=[0:len(arr)-1])
		i == i_ ? x : arr[i_]
];
