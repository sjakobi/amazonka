{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit.Types.PullRequestTarget
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.PullRequestTarget where

import Network.AWS.CodeCommit.Types.MergeMetadata
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Returns information about a pull request target.
--
--
--
-- /See:/ 'pullRequestTarget' smart constructor.
data PullRequestTarget = PullRequestTarget'
  { _prtDestinationReference ::
      !(Maybe Text),
    _prtSourceCommit :: !(Maybe Text),
    _prtMergeMetadata ::
      !(Maybe MergeMetadata),
    _prtRepositoryName :: !(Maybe Text),
    _prtSourceReference ::
      !(Maybe Text),
    _prtDestinationCommit ::
      !(Maybe Text),
    _prtMergeBase :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PullRequestTarget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prtDestinationReference' - The branch of the repository where the pull request changes are merged. Also known as the destination branch.
--
-- * 'prtSourceCommit' - The full commit ID of the tip of the source branch used to create the pull request. If the pull request branch is updated by a push while the pull request is open, the commit ID changes to reflect the new tip of the branch.
--
-- * 'prtMergeMetadata' - Returns metadata about the state of the merge, including whether the merge has been made.
--
-- * 'prtRepositoryName' - The name of the repository that contains the pull request source and destination branches.
--
-- * 'prtSourceReference' - The branch of the repository that contains the changes for the pull request. Also known as the source branch.
--
-- * 'prtDestinationCommit' - The full commit ID that is the tip of the destination branch. This is the commit where the pull request was or will be merged.
--
-- * 'prtMergeBase' - The commit ID of the most recent commit that the source branch and the destination branch have in common.
pullRequestTarget ::
  PullRequestTarget
pullRequestTarget =
  PullRequestTarget'
    { _prtDestinationReference =
        Nothing,
      _prtSourceCommit = Nothing,
      _prtMergeMetadata = Nothing,
      _prtRepositoryName = Nothing,
      _prtSourceReference = Nothing,
      _prtDestinationCommit = Nothing,
      _prtMergeBase = Nothing
    }

-- | The branch of the repository where the pull request changes are merged. Also known as the destination branch.
prtDestinationReference :: Lens' PullRequestTarget (Maybe Text)
prtDestinationReference = lens _prtDestinationReference (\s a -> s {_prtDestinationReference = a})

-- | The full commit ID of the tip of the source branch used to create the pull request. If the pull request branch is updated by a push while the pull request is open, the commit ID changes to reflect the new tip of the branch.
prtSourceCommit :: Lens' PullRequestTarget (Maybe Text)
prtSourceCommit = lens _prtSourceCommit (\s a -> s {_prtSourceCommit = a})

-- | Returns metadata about the state of the merge, including whether the merge has been made.
prtMergeMetadata :: Lens' PullRequestTarget (Maybe MergeMetadata)
prtMergeMetadata = lens _prtMergeMetadata (\s a -> s {_prtMergeMetadata = a})

-- | The name of the repository that contains the pull request source and destination branches.
prtRepositoryName :: Lens' PullRequestTarget (Maybe Text)
prtRepositoryName = lens _prtRepositoryName (\s a -> s {_prtRepositoryName = a})

-- | The branch of the repository that contains the changes for the pull request. Also known as the source branch.
prtSourceReference :: Lens' PullRequestTarget (Maybe Text)
prtSourceReference = lens _prtSourceReference (\s a -> s {_prtSourceReference = a})

-- | The full commit ID that is the tip of the destination branch. This is the commit where the pull request was or will be merged.
prtDestinationCommit :: Lens' PullRequestTarget (Maybe Text)
prtDestinationCommit = lens _prtDestinationCommit (\s a -> s {_prtDestinationCommit = a})

-- | The commit ID of the most recent commit that the source branch and the destination branch have in common.
prtMergeBase :: Lens' PullRequestTarget (Maybe Text)
prtMergeBase = lens _prtMergeBase (\s a -> s {_prtMergeBase = a})

instance FromJSON PullRequestTarget where
  parseJSON =
    withObject
      "PullRequestTarget"
      ( \x ->
          PullRequestTarget'
            <$> (x .:? "destinationReference")
            <*> (x .:? "sourceCommit")
            <*> (x .:? "mergeMetadata")
            <*> (x .:? "repositoryName")
            <*> (x .:? "sourceReference")
            <*> (x .:? "destinationCommit")
            <*> (x .:? "mergeBase")
      )

instance Hashable PullRequestTarget

instance NFData PullRequestTarget
