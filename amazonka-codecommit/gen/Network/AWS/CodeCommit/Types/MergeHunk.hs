{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit.Types.MergeHunk
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.MergeHunk where

import Network.AWS.CodeCommit.Types.MergeHunkDetail
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about merge hunks in a merge or pull request operation.
--
--
--
-- /See:/ 'mergeHunk' smart constructor.
data MergeHunk = MergeHunk'
  { _mhSource ::
      !(Maybe MergeHunkDetail),
    _mhIsConflict :: !(Maybe Bool),
    _mhDestination :: !(Maybe MergeHunkDetail),
    _mhBase :: !(Maybe MergeHunkDetail)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'MergeHunk' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mhSource' - Information about the merge hunk in the source of a merge or pull request.
--
-- * 'mhIsConflict' - A Boolean value indicating whether a combination of hunks contains a conflict. Conflicts occur when the same file or the same lines in a file were modified in both the source and destination of a merge or pull request. Valid values include true, false, and null. True when the hunk represents a conflict and one or more files contains a line conflict. File mode conflicts in a merge do not set this to true.
--
-- * 'mhDestination' - Information about the merge hunk in the destination of a merge or pull request.
--
-- * 'mhBase' - Information about the merge hunk in the base of a merge or pull request.
mergeHunk ::
  MergeHunk
mergeHunk =
  MergeHunk'
    { _mhSource = Nothing,
      _mhIsConflict = Nothing,
      _mhDestination = Nothing,
      _mhBase = Nothing
    }

-- | Information about the merge hunk in the source of a merge or pull request.
mhSource :: Lens' MergeHunk (Maybe MergeHunkDetail)
mhSource = lens _mhSource (\s a -> s {_mhSource = a})

-- | A Boolean value indicating whether a combination of hunks contains a conflict. Conflicts occur when the same file or the same lines in a file were modified in both the source and destination of a merge or pull request. Valid values include true, false, and null. True when the hunk represents a conflict and one or more files contains a line conflict. File mode conflicts in a merge do not set this to true.
mhIsConflict :: Lens' MergeHunk (Maybe Bool)
mhIsConflict = lens _mhIsConflict (\s a -> s {_mhIsConflict = a})

-- | Information about the merge hunk in the destination of a merge or pull request.
mhDestination :: Lens' MergeHunk (Maybe MergeHunkDetail)
mhDestination = lens _mhDestination (\s a -> s {_mhDestination = a})

-- | Information about the merge hunk in the base of a merge or pull request.
mhBase :: Lens' MergeHunk (Maybe MergeHunkDetail)
mhBase = lens _mhBase (\s a -> s {_mhBase = a})

instance FromJSON MergeHunk where
  parseJSON =
    withObject
      "MergeHunk"
      ( \x ->
          MergeHunk'
            <$> (x .:? "source")
            <*> (x .:? "isConflict")
            <*> (x .:? "destination")
            <*> (x .:? "base")
      )

instance Hashable MergeHunk

instance NFData MergeHunk
