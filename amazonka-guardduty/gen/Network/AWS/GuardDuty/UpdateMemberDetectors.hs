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
-- Module      : Network.AWS.GuardDuty.UpdateMemberDetectors
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Contains information on member accounts to be updated.
module Network.AWS.GuardDuty.UpdateMemberDetectors
  ( -- * Creating a Request
    updateMemberDetectors,
    UpdateMemberDetectors,

    -- * Request Lenses
    umdDataSources,
    umdDetectorId,
    umdAccountIds,

    -- * Destructuring the Response
    updateMemberDetectorsResponse,
    UpdateMemberDetectorsResponse,

    -- * Response Lenses
    umdrrsResponseStatus,
    umdrrsUnprocessedAccounts,
  )
where

import Network.AWS.GuardDuty.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateMemberDetectors' smart constructor.
data UpdateMemberDetectors = UpdateMemberDetectors'
  { _umdDataSources ::
      !( Maybe
           DataSourceConfigurations
       ),
    _umdDetectorId :: !Text,
    _umdAccountIds ::
      !(List1 Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateMemberDetectors' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umdDataSources' - Describes which data sources will be updated.
--
-- * 'umdDetectorId' - The detector ID of the administrator account.
--
-- * 'umdAccountIds' - A list of member account IDs to be updated.
updateMemberDetectors ::
  -- | 'umdDetectorId'
  Text ->
  -- | 'umdAccountIds'
  NonEmpty Text ->
  UpdateMemberDetectors
updateMemberDetectors pDetectorId_ pAccountIds_ =
  UpdateMemberDetectors'
    { _umdDataSources = Nothing,
      _umdDetectorId = pDetectorId_,
      _umdAccountIds = _List1 # pAccountIds_
    }

-- | Describes which data sources will be updated.
umdDataSources :: Lens' UpdateMemberDetectors (Maybe DataSourceConfigurations)
umdDataSources = lens _umdDataSources (\s a -> s {_umdDataSources = a})

-- | The detector ID of the administrator account.
umdDetectorId :: Lens' UpdateMemberDetectors Text
umdDetectorId = lens _umdDetectorId (\s a -> s {_umdDetectorId = a})

-- | A list of member account IDs to be updated.
umdAccountIds :: Lens' UpdateMemberDetectors (NonEmpty Text)
umdAccountIds = lens _umdAccountIds (\s a -> s {_umdAccountIds = a}) . _List1

instance AWSRequest UpdateMemberDetectors where
  type
    Rs UpdateMemberDetectors =
      UpdateMemberDetectorsResponse
  request = postJSON guardDuty
  response =
    receiveJSON
      ( \s h x ->
          UpdateMemberDetectorsResponse'
            <$> (pure (fromEnum s))
            <*> (x .?> "unprocessedAccounts" .!@ mempty)
      )

instance Hashable UpdateMemberDetectors

instance NFData UpdateMemberDetectors

instance ToHeaders UpdateMemberDetectors where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateMemberDetectors where
  toJSON UpdateMemberDetectors' {..} =
    object
      ( catMaybes
          [ ("dataSources" .=) <$> _umdDataSources,
            Just ("accountIds" .= _umdAccountIds)
          ]
      )

instance ToPath UpdateMemberDetectors where
  toPath UpdateMemberDetectors' {..} =
    mconcat
      [ "/detector/",
        toBS _umdDetectorId,
        "/member/detector/update"
      ]

instance ToQuery UpdateMemberDetectors where
  toQuery = const mempty

-- | /See:/ 'updateMemberDetectorsResponse' smart constructor.
data UpdateMemberDetectorsResponse = UpdateMemberDetectorsResponse'
  { _umdrrsResponseStatus ::
      !Int,
    _umdrrsUnprocessedAccounts ::
      ![UnprocessedAccount]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateMemberDetectorsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umdrrsResponseStatus' - -- | The response status code.
--
-- * 'umdrrsUnprocessedAccounts' - A list of member account IDs that were unable to be processed along with an explanation for why they were not processed.
updateMemberDetectorsResponse ::
  -- | 'umdrrsResponseStatus'
  Int ->
  UpdateMemberDetectorsResponse
updateMemberDetectorsResponse pResponseStatus_ =
  UpdateMemberDetectorsResponse'
    { _umdrrsResponseStatus =
        pResponseStatus_,
      _umdrrsUnprocessedAccounts = mempty
    }

-- | -- | The response status code.
umdrrsResponseStatus :: Lens' UpdateMemberDetectorsResponse Int
umdrrsResponseStatus = lens _umdrrsResponseStatus (\s a -> s {_umdrrsResponseStatus = a})

-- | A list of member account IDs that were unable to be processed along with an explanation for why they were not processed.
umdrrsUnprocessedAccounts :: Lens' UpdateMemberDetectorsResponse [UnprocessedAccount]
umdrrsUnprocessedAccounts = lens _umdrrsUnprocessedAccounts (\s a -> s {_umdrrsUnprocessedAccounts = a}) . _Coerce

instance NFData UpdateMemberDetectorsResponse
