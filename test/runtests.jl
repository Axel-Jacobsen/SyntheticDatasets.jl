using SyntheticDatasets
using DataFrames
using Test

@testset "SkLearn Generators" begin
    samples = 20000
    data = SyntheticDatasets.generate_blobs(centers = [-1 1;-0.5 0.75], 
                                            cluster_std = 0.225, 
                                            n_samples = 20000,
                                            center_box = (-1.5, 1.5))
    
    @test size(data)[1] == samples
    @test size(data)[2] == 3

    samples = 20000
    data = SyntheticDatasets.generate_moons(n_samples = 20000)

    @test size(data)[1] == samples
    @test size(data)[2] == 3
end