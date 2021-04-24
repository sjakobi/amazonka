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
-- Module      : Network.AWS.GuardDuty.UpdateThreatIntelSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the ThreatIntelSet specified by the ThreatIntelSet ID.
module Network.AWS.GuardDuty.UpdateThreatIntelSet
  ( -- * Creating a Request
    updateThreatIntelSet,
    UpdateThreatIntelSet,

    -- * Request Lenses
    utisActivate,
    utisName,
    utisLocation,
    utisDetectorId,
    utisThreatIntelSetId,

    -- * Destructuring the Response
    updateThreatIntelSetResponse,
    UpdateThreatIntelSetResponse,

    -- * Response Lenses
    utisrrsResponseStatus,
  )
where

import Network.AWS.GuardDuty.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateThreatIntelSet' smart constructor.
data UpdateThreatIntelSet = UpdateThreatIntelSet'
  { _utisActivate ::
      !(Maybe Bool),
    _utisName :: !(Maybe Text),
    _utisLocation ::
      !(Maybe Text),
    _utisDetectorId :: !Text,
    _utisThreatIntelSetId ::
      !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateThreatIntelSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utisActivate' - The updated Boolean value that specifies whether the ThreateIntelSet is active or not.
--
-- * 'utisName' - The unique ID that specifies the ThreatIntelSet that you want to update.
--
-- * 'utisLocation' - The updated URI of the file that contains the ThreateIntelSet.
--
-- * 'utisDetectorId' - The detectorID that specifies the GuardDuty service whose ThreatIntelSet you want to update.
--
-- * 'utisThreatIntelSetId' - The unique ID that specifies the ThreatIntelSet that you want to update.
updateThreatIntelSet ::
  -- | 'utisDetectorId'
  Text ->
  -- | 'utisThreatIntelSetId'
  Text ->
  UpdateThreatIntelSet
updateThreatIntelSet pDetectorId_ pThreatIntelSetId_ =
  UpdateThreatIntelSet'
    { _utisActivate = Nothing,
      _utisName = Nothing,
      _utisLocation = Nothing,
      _utisDetectorId = pDetectorId_,
      _utisThreatIntelSetId = pThreatIntelSetId_
    }

-- | The updated Boolean value that specifies whether the ThreateIntelSet is active or not.
utisActivate :: Lens' UpdateThreatIntelSet (Maybe Bool)
utisActivate = lens _utisActivate (\s a -> s {_utisActivate = a})

-- | The unique ID that specifies the ThreatIntelSet that you want to update.
utisName :: Lens' UpdateThreatIntelSet (Maybe Text)
utisName = lens _utisName (\s a -> s {_utisName = a})

-- | The updated URI of the file that contains the ThreateIntelSet.
utisLocation :: Lens' UpdateThreatIntelSet (Maybe Text)
utisLocation = lens _utisLocation (\s a -> s {_utisLocation = a})

-- | The detectorID that specifies the GuardDuty service whose ThreatIntelSet you want to update.
utisDetectorId :: Lens' UpdateThreatIntelSet Text
utisDetectorId = lens _utisDetectorId (\s a -> s {_utisDetectorId = a})

-- | The unique ID that specifies the ThreatIntelSet that you want to update.
utisThreatIntelSetId :: Lens' UpdateThreatIntelSet Text
utisThreatIntelSetId = lens _utisThreatIntelSetId (\s a -> s {_utisThreatIntelSetId = a})

instance AWSRequest UpdateThreatIntelSet where
  type
    Rs UpdateThreatIntelSet =
      UpdateThreatIntelSetResponse
  request = postJSON guardDuty
  response =
    receiveEmpty
      ( \s h x ->
          UpdateThreatIntelSetResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable UpdateThreatIntelSet

instance NFData UpdateThreatIntelSet

instance ToHeaders UpdateThreatIntelSet where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateThreatIntelSet where
  toJSON UpdateThreatIntelSet' {..} =
    object
      ( catMaybes
          [ ("activate" .=) <$> _utisActivate,
            ("name" .=) <$> _utisName,
            ("location" .=) <$> _utisLocation
          ]
      )

instance ToPath UpdateThreatIntelSet where
  toPath UpdateThreatIntelSet' {..} =
    mconcat
      [ "/detector/",
        toBS _utisDetectorId,
        "/threatintelset/",
        toBS _utisThreatIntelSetId
      ]

instance ToQuery UpdateThreatIntelSet where
  toQuery = const mempty

-- | /See:/ 'updateThreatIntelSetResponse' smart constructor.
newtype UpdateThreatIntelSetResponse = UpdateThreatIntelSetResponse'
  { _utisrrsResponseStatus ::
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

-- | Creates a value of 'UpdateThreatIntelSetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utisrrsResponseStatus' - -- | The response status code.
updateThreatIntelSetResponse ::
  -- | 'utisrrsResponseStatus'
  Int ->
  UpdateThreatIntelSetResponse
updateThreatIntelSetResponse pResponseStatus_ =
  UpdateThreatIntelSetResponse'
    { _utisrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
utisrrsResponseStatus :: Lens' UpdateThreatIntelSetResponse Int
utisrrsResponseStatus = lens _utisrrsResponseStatus (\s a -> s {_utisrrsResponseStatus = a})

instance NFData UpdateThreatIntelSetResponse
