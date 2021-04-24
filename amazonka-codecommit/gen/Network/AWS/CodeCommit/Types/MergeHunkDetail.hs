{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit.Types.MergeHunkDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.MergeHunkDetail where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about the details of a merge hunk that contains a conflict in a merge or pull request operation.
--
--
--
-- /See:/ 'mergeHunkDetail' smart constructor.
data MergeHunkDetail = MergeHunkDetail'
  { _mhdHunkContent ::
      !(Maybe Text),
    _mhdStartLine :: !(Maybe Int),
    _mhdEndLine :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'MergeHunkDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mhdHunkContent' - The base-64 encoded content of the hunk merged region that might contain a conflict.
--
-- * 'mhdStartLine' - The start position of the hunk in the merge result.
--
-- * 'mhdEndLine' - The end position of the hunk in the merge result.
mergeHunkDetail ::
  MergeHunkDetail
mergeHunkDetail =
  MergeHunkDetail'
    { _mhdHunkContent = Nothing,
      _mhdStartLine = Nothing,
      _mhdEndLine = Nothing
    }

-- | The base-64 encoded content of the hunk merged region that might contain a conflict.
mhdHunkContent :: Lens' MergeHunkDetail (Maybe Text)
mhdHunkContent = lens _mhdHunkContent (\s a -> s {_mhdHunkContent = a})

-- | The start position of the hunk in the merge result.
mhdStartLine :: Lens' MergeHunkDetail (Maybe Int)
mhdStartLine = lens _mhdStartLine (\s a -> s {_mhdStartLine = a})

-- | The end position of the hunk in the merge result.
mhdEndLine :: Lens' MergeHunkDetail (Maybe Int)
mhdEndLine = lens _mhdEndLine (\s a -> s {_mhdEndLine = a})

instance FromJSON MergeHunkDetail where
  parseJSON =
    withObject
      "MergeHunkDetail"
      ( \x ->
          MergeHunkDetail'
            <$> (x .:? "hunkContent")
            <*> (x .:? "startLine")
            <*> (x .:? "endLine")
      )

instance Hashable MergeHunkDetail

instance NFData MergeHunkDetail
