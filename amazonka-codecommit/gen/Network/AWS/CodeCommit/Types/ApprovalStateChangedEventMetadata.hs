{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit.Types.ApprovalStateChangedEventMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.ApprovalStateChangedEventMetadata where

import Network.AWS.CodeCommit.Types.ApprovalState
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Returns information about a change in the approval state for a pull request.
--
--
--
-- /See:/ 'approvalStateChangedEventMetadata' smart constructor.
data ApprovalStateChangedEventMetadata = ApprovalStateChangedEventMetadata'
  { _ascemRevisionId ::
      !( Maybe
           Text
       ),
    _ascemApprovalStatus ::
      !( Maybe
           ApprovalState
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ApprovalStateChangedEventMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ascemRevisionId' - The revision ID of the pull request when the approval state changed.
--
-- * 'ascemApprovalStatus' - The approval status for the pull request.
approvalStateChangedEventMetadata ::
  ApprovalStateChangedEventMetadata
approvalStateChangedEventMetadata =
  ApprovalStateChangedEventMetadata'
    { _ascemRevisionId =
        Nothing,
      _ascemApprovalStatus = Nothing
    }

-- | The revision ID of the pull request when the approval state changed.
ascemRevisionId :: Lens' ApprovalStateChangedEventMetadata (Maybe Text)
ascemRevisionId = lens _ascemRevisionId (\s a -> s {_ascemRevisionId = a})

-- | The approval status for the pull request.
ascemApprovalStatus :: Lens' ApprovalStateChangedEventMetadata (Maybe ApprovalState)
ascemApprovalStatus = lens _ascemApprovalStatus (\s a -> s {_ascemApprovalStatus = a})

instance FromJSON ApprovalStateChangedEventMetadata where
  parseJSON =
    withObject
      "ApprovalStateChangedEventMetadata"
      ( \x ->
          ApprovalStateChangedEventMetadata'
            <$> (x .:? "revisionId") <*> (x .:? "approvalStatus")
      )

instance Hashable ApprovalStateChangedEventMetadata

instance NFData ApprovalStateChangedEventMetadata
