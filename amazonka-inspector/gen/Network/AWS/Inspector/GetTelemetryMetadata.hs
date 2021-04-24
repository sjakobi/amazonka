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
-- Module      : Network.AWS.Inspector.GetTelemetryMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Information about the data that is collected for the specified assessment run.
module Network.AWS.Inspector.GetTelemetryMetadata
  ( -- * Creating a Request
    getTelemetryMetadata,
    GetTelemetryMetadata,

    -- * Request Lenses
    gtmAssessmentRunARN,

    -- * Destructuring the Response
    getTelemetryMetadataResponse,
    GetTelemetryMetadataResponse,

    -- * Response Lenses
    gtmrrsResponseStatus,
    gtmrrsTelemetryMetadata,
  )
where

import Network.AWS.Inspector.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getTelemetryMetadata' smart constructor.
newtype GetTelemetryMetadata = GetTelemetryMetadata'
  { _gtmAssessmentRunARN ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetTelemetryMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtmAssessmentRunARN' - The ARN that specifies the assessment run that has the telemetry data that you want to obtain.
getTelemetryMetadata ::
  -- | 'gtmAssessmentRunARN'
  Text ->
  GetTelemetryMetadata
getTelemetryMetadata pAssessmentRunARN_ =
  GetTelemetryMetadata'
    { _gtmAssessmentRunARN =
        pAssessmentRunARN_
    }

-- | The ARN that specifies the assessment run that has the telemetry data that you want to obtain.
gtmAssessmentRunARN :: Lens' GetTelemetryMetadata Text
gtmAssessmentRunARN = lens _gtmAssessmentRunARN (\s a -> s {_gtmAssessmentRunARN = a})

instance AWSRequest GetTelemetryMetadata where
  type
    Rs GetTelemetryMetadata =
      GetTelemetryMetadataResponse
  request = postJSON inspector
  response =
    receiveJSON
      ( \s h x ->
          GetTelemetryMetadataResponse'
            <$> (pure (fromEnum s))
            <*> (x .?> "telemetryMetadata" .!@ mempty)
      )

instance Hashable GetTelemetryMetadata

instance NFData GetTelemetryMetadata

instance ToHeaders GetTelemetryMetadata where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "InspectorService.GetTelemetryMetadata" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetTelemetryMetadata where
  toJSON GetTelemetryMetadata' {..} =
    object
      ( catMaybes
          [Just ("assessmentRunArn" .= _gtmAssessmentRunARN)]
      )

instance ToPath GetTelemetryMetadata where
  toPath = const "/"

instance ToQuery GetTelemetryMetadata where
  toQuery = const mempty

-- | /See:/ 'getTelemetryMetadataResponse' smart constructor.
data GetTelemetryMetadataResponse = GetTelemetryMetadataResponse'
  { _gtmrrsResponseStatus ::
      !Int,
    _gtmrrsTelemetryMetadata ::
      ![TelemetryMetadata]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetTelemetryMetadataResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtmrrsResponseStatus' - -- | The response status code.
--
-- * 'gtmrrsTelemetryMetadata' - Telemetry details.
getTelemetryMetadataResponse ::
  -- | 'gtmrrsResponseStatus'
  Int ->
  GetTelemetryMetadataResponse
getTelemetryMetadataResponse pResponseStatus_ =
  GetTelemetryMetadataResponse'
    { _gtmrrsResponseStatus =
        pResponseStatus_,
      _gtmrrsTelemetryMetadata = mempty
    }

-- | -- | The response status code.
gtmrrsResponseStatus :: Lens' GetTelemetryMetadataResponse Int
gtmrrsResponseStatus = lens _gtmrrsResponseStatus (\s a -> s {_gtmrrsResponseStatus = a})

-- | Telemetry details.
gtmrrsTelemetryMetadata :: Lens' GetTelemetryMetadataResponse [TelemetryMetadata]
gtmrrsTelemetryMetadata = lens _gtmrrsTelemetryMetadata (\s a -> s {_gtmrrsTelemetryMetadata = a}) . _Coerce

instance NFData GetTelemetryMetadataResponse
