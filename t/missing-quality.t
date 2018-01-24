  $ cd $TESTDIR/..


Missing qualities are assigned a score of zero by default:

  $ ./simple-consensus-per-read-group --ignore-read-groups t/data/missing-quality.bam
  @ref/Consensus
  ATCGTTAA
  +
  !!!!??]]


but the default can be changed with an option:

  $ ./simple-consensus-per-read-group --ignore-read-groups --missing-quality 30 t/data/missing-quality.bam
  @ref/Consensus
  ATCGTTAA
  +
  ????NN]]
