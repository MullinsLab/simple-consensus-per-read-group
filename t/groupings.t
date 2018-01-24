  $ cd $TESTDIR/..


Multiple references within a read group should be called separately:

  $ ./simple-consensus-per-read-group --ignore-read-groups t/data/multiple-references.bam
  @refA/Consensus
  ATCGTTAA
  +
  ]]]]]]]]
  @refB/Consensus
  ANCGA
  +
  ]!]]]


Multiple read groups for the same reference should be called separately:

  $ ./simple-consensus-per-read-group t/data/multiple-read-groups.bam
  @ref/RG1
  ATCGTTAA
  +
  ]]]]]]]]
  @ref/RG2
  ANCGA
  +
  ]!]]]


Multiple (reference, read group) combinations should be called separately:

  $ ./simple-consensus-per-read-group t/data/multiple-references-and-read-groups.bam
  @refA/RG1
  ATCGT
  +
  ]]]]]
  @refA/RG2
  TTNAA
  +
  ]]!]]
  @refB/RG1
  ANCGA
  +
  ]!]]]
  @refB/RG2
  ATCAA
  +
  ]]]]]
