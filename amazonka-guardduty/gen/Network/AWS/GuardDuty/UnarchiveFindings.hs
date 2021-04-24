{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.UnarchiveFindings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Unarchives GuardDuty findings specified by the @findingIds@ .
module Network.AWS.GuardDuty.UnarchiveFindings
  ( -- * Creating a Request
    unarchiveFindings,
    UnarchiveFindings,

    -- * Request Lenses
    ufDetectorId,
    ufFindingIds,

    -- * Destructuring the Response
    unarchiveFindingsResponse,
    UnarchiveFindingsResponse,

    -- * Response Lenses
    ufrrsResponseStatus,
  )
where

import Network.AWS.GuardDuty.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'unarchiveFindings' smart constructor.
data UnarchiveFindings = UnarchiveFindings'
  { _ufDetectorId ::
      !Text,
    _ufFindingIds :: ![Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UnarchiveFindings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ufDetectorId' - The ID of the detector associated with the findings to unarchive.
--
-- * 'ufFindingIds' - The IDs of the findings to unarchive.
unarchiveFindings ::
  -- | 'ufDetectorId'
  Text ->
  UnarchiveFindings
unarchiveFindings pDetectorId_ =
  UnarchiveFindings'
    { _ufDetectorId = pDetectorId_,
      _ufFindingIds = mempty
    }

-- | The ID of the detector associated with the findings to unarchive.
ufDetectorId :: Lens' UnarchiveFindings Text
ufDetectorId = lens _ufDetectorId (\s a -> s {_ufDetectorId = a})

-- | The IDs of the findings to unarchive.
ufFindingIds :: Lens' UnarchiveFindings [Text]
ufFindingIds = lens _ufFindingIds (\s a -> s {_ufFindingIds = a}) . _Coerce

instance AWSRequest UnarchiveFindings where
  type Rs UnarchiveFindings = UnarchiveFindingsResponse
  request = postJSON guardDuty
  response =
    receiveEmpty
      ( \s h x ->
          UnarchiveFindingsResponse' <$> (pure (fromEnum s))
      )

instance Hashable UnarchiveFindings

instance NFData UnarchiveFindings

instance ToHeaders UnarchiveFindings where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UnarchiveFindings where
  toJSON UnarchiveFindings' {..} =
    object
      (catMaybes [Just ("findingIds" .= _ufFindingIds)])

instance ToPath UnarchiveFindings where
  toPath UnarchiveFindings' {..} =
    mconcat
      [ "/detector/",
        toBS _ufDetectorId,
        "/findings/unarchive"
      ]

instance ToQuery UnarchiveFindings where
  toQuery = const mempty

-- | /See:/ 'unarchiveFindingsResponse' smart constructor.
newtype UnarchiveFindingsResponse = UnarchiveFindingsResponse'
  { _ufrrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UnarchiveFindingsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ufrrsResponseStatus' - -- | The response status code.
unarchiveFindingsResponse ::
  -- | 'ufrrsResponseStatus'
  Int ->
  UnarchiveFindingsResponse
unarchiveFindingsResponse pResponseStatus_ =
  UnarchiveFindingsResponse'
    { _ufrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
ufrrsResponseStatus :: Lens' UnarchiveFindingsResponse Int
ufrrsResponseStatus = lens _ufrrsResponseStatus (\s a -> s {_ufrrsResponseStatus = a})

instance NFData UnarchiveFindingsResponse
