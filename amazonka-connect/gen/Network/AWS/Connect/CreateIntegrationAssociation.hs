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
-- Module      : Network.AWS.Connect.CreateIntegrationAssociation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to change.
--
--
-- Create an AppIntegration association with an Amazon Connect instance.
module Network.AWS.Connect.CreateIntegrationAssociation
  ( -- * Creating a Request
    createIntegrationAssociation,
    CreateIntegrationAssociation,

    -- * Request Lenses
    ciaInstanceId,
    ciaIntegrationType,
    ciaIntegrationARN,
    ciaSourceApplicationURL,
    ciaSourceApplicationName,
    ciaSourceType,

    -- * Destructuring the Response
    createIntegrationAssociationResponse,
    CreateIntegrationAssociationResponse,

    -- * Response Lenses
    ciarrsIntegrationAssociationARN,
    ciarrsIntegrationAssociationId,
    ciarrsResponseStatus,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createIntegrationAssociation' smart constructor.
data CreateIntegrationAssociation = CreateIntegrationAssociation'
  { _ciaInstanceId ::
      !Text,
    _ciaIntegrationType ::
      !IntegrationType,
    _ciaIntegrationARN ::
      !Text,
    _ciaSourceApplicationURL ::
      !Text,
    _ciaSourceApplicationName ::
      !Text,
    _ciaSourceType ::
      !SourceType
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateIntegrationAssociation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciaInstanceId' - The identifier of the Amazon Connect instance.
--
-- * 'ciaIntegrationType' - The type of information to be ingested.
--
-- * 'ciaIntegrationARN' - The Amazon Resource Name (ARN) of the integration.
--
-- * 'ciaSourceApplicationURL' - The URL for the external application.
--
-- * 'ciaSourceApplicationName' - The name of the external application.
--
-- * 'ciaSourceType' - The type of the data source.
createIntegrationAssociation ::
  -- | 'ciaInstanceId'
  Text ->
  -- | 'ciaIntegrationType'
  IntegrationType ->
  -- | 'ciaIntegrationARN'
  Text ->
  -- | 'ciaSourceApplicationURL'
  Text ->
  -- | 'ciaSourceApplicationName'
  Text ->
  -- | 'ciaSourceType'
  SourceType ->
  CreateIntegrationAssociation
createIntegrationAssociation
  pInstanceId_
  pIntegrationType_
  pIntegrationARN_
  pSourceApplicationURL_
  pSourceApplicationName_
  pSourceType_ =
    CreateIntegrationAssociation'
      { _ciaInstanceId =
          pInstanceId_,
        _ciaIntegrationType = pIntegrationType_,
        _ciaIntegrationARN = pIntegrationARN_,
        _ciaSourceApplicationURL =
          pSourceApplicationURL_,
        _ciaSourceApplicationName =
          pSourceApplicationName_,
        _ciaSourceType = pSourceType_
      }

-- | The identifier of the Amazon Connect instance.
ciaInstanceId :: Lens' CreateIntegrationAssociation Text
ciaInstanceId = lens _ciaInstanceId (\s a -> s {_ciaInstanceId = a})

-- | The type of information to be ingested.
ciaIntegrationType :: Lens' CreateIntegrationAssociation IntegrationType
ciaIntegrationType = lens _ciaIntegrationType (\s a -> s {_ciaIntegrationType = a})

-- | The Amazon Resource Name (ARN) of the integration.
ciaIntegrationARN :: Lens' CreateIntegrationAssociation Text
ciaIntegrationARN = lens _ciaIntegrationARN (\s a -> s {_ciaIntegrationARN = a})

-- | The URL for the external application.
ciaSourceApplicationURL :: Lens' CreateIntegrationAssociation Text
ciaSourceApplicationURL = lens _ciaSourceApplicationURL (\s a -> s {_ciaSourceApplicationURL = a})

-- | The name of the external application.
ciaSourceApplicationName :: Lens' CreateIntegrationAssociation Text
ciaSourceApplicationName = lens _ciaSourceApplicationName (\s a -> s {_ciaSourceApplicationName = a})

-- | The type of the data source.
ciaSourceType :: Lens' CreateIntegrationAssociation SourceType
ciaSourceType = lens _ciaSourceType (\s a -> s {_ciaSourceType = a})

instance AWSRequest CreateIntegrationAssociation where
  type
    Rs CreateIntegrationAssociation =
      CreateIntegrationAssociationResponse
  request = putJSON connect
  response =
    receiveJSON
      ( \s h x ->
          CreateIntegrationAssociationResponse'
            <$> (x .?> "IntegrationAssociationArn")
            <*> (x .?> "IntegrationAssociationId")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateIntegrationAssociation

instance NFData CreateIntegrationAssociation

instance ToHeaders CreateIntegrationAssociation where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateIntegrationAssociation where
  toJSON CreateIntegrationAssociation' {..} =
    object
      ( catMaybes
          [ Just ("IntegrationType" .= _ciaIntegrationType),
            Just ("IntegrationArn" .= _ciaIntegrationARN),
            Just
              ("SourceApplicationUrl" .= _ciaSourceApplicationURL),
            Just
              ( "SourceApplicationName"
                  .= _ciaSourceApplicationName
              ),
            Just ("SourceType" .= _ciaSourceType)
          ]
      )

instance ToPath CreateIntegrationAssociation where
  toPath CreateIntegrationAssociation' {..} =
    mconcat
      [ "/instance/",
        toBS _ciaInstanceId,
        "/integration-associations"
      ]

instance ToQuery CreateIntegrationAssociation where
  toQuery = const mempty

-- | /See:/ 'createIntegrationAssociationResponse' smart constructor.
data CreateIntegrationAssociationResponse = CreateIntegrationAssociationResponse'
  { _ciarrsIntegrationAssociationARN ::
      !( Maybe
           Text
       ),
    _ciarrsIntegrationAssociationId ::
      !( Maybe
           Text
       ),
    _ciarrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateIntegrationAssociationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciarrsIntegrationAssociationARN' - The Amazon Resource Name (ARN) for the association.
--
-- * 'ciarrsIntegrationAssociationId' - The identifier for the association.
--
-- * 'ciarrsResponseStatus' - -- | The response status code.
createIntegrationAssociationResponse ::
  -- | 'ciarrsResponseStatus'
  Int ->
  CreateIntegrationAssociationResponse
createIntegrationAssociationResponse pResponseStatus_ =
  CreateIntegrationAssociationResponse'
    { _ciarrsIntegrationAssociationARN =
        Nothing,
      _ciarrsIntegrationAssociationId =
        Nothing,
      _ciarrsResponseStatus =
        pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) for the association.
ciarrsIntegrationAssociationARN :: Lens' CreateIntegrationAssociationResponse (Maybe Text)
ciarrsIntegrationAssociationARN = lens _ciarrsIntegrationAssociationARN (\s a -> s {_ciarrsIntegrationAssociationARN = a})

-- | The identifier for the association.
ciarrsIntegrationAssociationId :: Lens' CreateIntegrationAssociationResponse (Maybe Text)
ciarrsIntegrationAssociationId = lens _ciarrsIntegrationAssociationId (\s a -> s {_ciarrsIntegrationAssociationId = a})

-- | -- | The response status code.
ciarrsResponseStatus :: Lens' CreateIntegrationAssociationResponse Int
ciarrsResponseStatus = lens _ciarrsResponseStatus (\s a -> s {_ciarrsResponseStatus = a})

instance NFData CreateIntegrationAssociationResponse
