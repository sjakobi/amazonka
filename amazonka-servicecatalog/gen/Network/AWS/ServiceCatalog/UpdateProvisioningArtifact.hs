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
-- Module      : Network.AWS.ServiceCatalog.UpdateProvisioningArtifact
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified provisioning artifact (also known as a version) for the specified product.
--
--
-- You cannot update a provisioning artifact for a product that was shared with you.
module Network.AWS.ServiceCatalog.UpdateProvisioningArtifact
  ( -- * Creating a Request
    updateProvisioningArtifact,
    UpdateProvisioningArtifact,

    -- * Request Lenses
    upaGuidance,
    upaName,
    upaActive,
    upaDescription,
    upaAcceptLanguage,
    upaProductId,
    upaProvisioningArtifactId,

    -- * Destructuring the Response
    updateProvisioningArtifactResponse,
    UpdateProvisioningArtifactResponse,

    -- * Response Lenses
    uparrsStatus,
    uparrsInfo,
    uparrsProvisioningArtifactDetail,
    uparrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'updateProvisioningArtifact' smart constructor.
data UpdateProvisioningArtifact = UpdateProvisioningArtifact'
  { _upaGuidance ::
      !( Maybe
           ProvisioningArtifactGuidance
       ),
    _upaName ::
      !(Maybe Text),
    _upaActive ::
      !(Maybe Bool),
    _upaDescription ::
      !(Maybe Text),
    _upaAcceptLanguage ::
      !(Maybe Text),
    _upaProductId ::
      !Text,
    _upaProvisioningArtifactId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateProvisioningArtifact' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upaGuidance' - Information set by the administrator to provide guidance to end users about which provisioning artifacts to use. The @DEFAULT@ value indicates that the product version is active. The administrator can set the guidance to @DEPRECATED@ to inform users that the product version is deprecated. Users are able to make updates to a provisioned product of a deprecated version but cannot launch new provisioned products using a deprecated version.
--
-- * 'upaName' - The updated name of the provisioning artifact.
--
-- * 'upaActive' - Indicates whether the product version is active. Inactive provisioning artifacts are invisible to end users. End users cannot launch or update a provisioned product from an inactive provisioning artifact.
--
-- * 'upaDescription' - The updated description of the provisioning artifact.
--
-- * 'upaAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'upaProductId' - The product identifier.
--
-- * 'upaProvisioningArtifactId' - The identifier of the provisioning artifact.
updateProvisioningArtifact ::
  -- | 'upaProductId'
  Text ->
  -- | 'upaProvisioningArtifactId'
  Text ->
  UpdateProvisioningArtifact
updateProvisioningArtifact
  pProductId_
  pProvisioningArtifactId_ =
    UpdateProvisioningArtifact'
      { _upaGuidance = Nothing,
        _upaName = Nothing,
        _upaActive = Nothing,
        _upaDescription = Nothing,
        _upaAcceptLanguage = Nothing,
        _upaProductId = pProductId_,
        _upaProvisioningArtifactId =
          pProvisioningArtifactId_
      }

-- | Information set by the administrator to provide guidance to end users about which provisioning artifacts to use. The @DEFAULT@ value indicates that the product version is active. The administrator can set the guidance to @DEPRECATED@ to inform users that the product version is deprecated. Users are able to make updates to a provisioned product of a deprecated version but cannot launch new provisioned products using a deprecated version.
upaGuidance :: Lens' UpdateProvisioningArtifact (Maybe ProvisioningArtifactGuidance)
upaGuidance = lens _upaGuidance (\s a -> s {_upaGuidance = a})

-- | The updated name of the provisioning artifact.
upaName :: Lens' UpdateProvisioningArtifact (Maybe Text)
upaName = lens _upaName (\s a -> s {_upaName = a})

-- | Indicates whether the product version is active. Inactive provisioning artifacts are invisible to end users. End users cannot launch or update a provisioned product from an inactive provisioning artifact.
upaActive :: Lens' UpdateProvisioningArtifact (Maybe Bool)
upaActive = lens _upaActive (\s a -> s {_upaActive = a})

-- | The updated description of the provisioning artifact.
upaDescription :: Lens' UpdateProvisioningArtifact (Maybe Text)
upaDescription = lens _upaDescription (\s a -> s {_upaDescription = a})

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
upaAcceptLanguage :: Lens' UpdateProvisioningArtifact (Maybe Text)
upaAcceptLanguage = lens _upaAcceptLanguage (\s a -> s {_upaAcceptLanguage = a})

-- | The product identifier.
upaProductId :: Lens' UpdateProvisioningArtifact Text
upaProductId = lens _upaProductId (\s a -> s {_upaProductId = a})

-- | The identifier of the provisioning artifact.
upaProvisioningArtifactId :: Lens' UpdateProvisioningArtifact Text
upaProvisioningArtifactId = lens _upaProvisioningArtifactId (\s a -> s {_upaProvisioningArtifactId = a})

instance AWSRequest UpdateProvisioningArtifact where
  type
    Rs UpdateProvisioningArtifact =
      UpdateProvisioningArtifactResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          UpdateProvisioningArtifactResponse'
            <$> (x .?> "Status")
            <*> (x .?> "Info" .!@ mempty)
            <*> (x .?> "ProvisioningArtifactDetail")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateProvisioningArtifact

instance NFData UpdateProvisioningArtifact

instance ToHeaders UpdateProvisioningArtifact where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.UpdateProvisioningArtifact" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateProvisioningArtifact where
  toJSON UpdateProvisioningArtifact' {..} =
    object
      ( catMaybes
          [ ("Guidance" .=) <$> _upaGuidance,
            ("Name" .=) <$> _upaName,
            ("Active" .=) <$> _upaActive,
            ("Description" .=) <$> _upaDescription,
            ("AcceptLanguage" .=) <$> _upaAcceptLanguage,
            Just ("ProductId" .= _upaProductId),
            Just
              ( "ProvisioningArtifactId"
                  .= _upaProvisioningArtifactId
              )
          ]
      )

instance ToPath UpdateProvisioningArtifact where
  toPath = const "/"

instance ToQuery UpdateProvisioningArtifact where
  toQuery = const mempty

-- | /See:/ 'updateProvisioningArtifactResponse' smart constructor.
data UpdateProvisioningArtifactResponse = UpdateProvisioningArtifactResponse'
  { _uparrsStatus ::
      !( Maybe
           RequestStatus
       ),
    _uparrsInfo ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _uparrsProvisioningArtifactDetail ::
      !( Maybe
           ProvisioningArtifactDetail
       ),
    _uparrsResponseStatus ::
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

-- | Creates a value of 'UpdateProvisioningArtifactResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uparrsStatus' - The status of the current request.
--
-- * 'uparrsInfo' - The URL of the CloudFormation template in Amazon S3.
--
-- * 'uparrsProvisioningArtifactDetail' - Information about the provisioning artifact.
--
-- * 'uparrsResponseStatus' - -- | The response status code.
updateProvisioningArtifactResponse ::
  -- | 'uparrsResponseStatus'
  Int ->
  UpdateProvisioningArtifactResponse
updateProvisioningArtifactResponse pResponseStatus_ =
  UpdateProvisioningArtifactResponse'
    { _uparrsStatus =
        Nothing,
      _uparrsInfo = Nothing,
      _uparrsProvisioningArtifactDetail =
        Nothing,
      _uparrsResponseStatus =
        pResponseStatus_
    }

-- | The status of the current request.
uparrsStatus :: Lens' UpdateProvisioningArtifactResponse (Maybe RequestStatus)
uparrsStatus = lens _uparrsStatus (\s a -> s {_uparrsStatus = a})

-- | The URL of the CloudFormation template in Amazon S3.
uparrsInfo :: Lens' UpdateProvisioningArtifactResponse (HashMap Text Text)
uparrsInfo = lens _uparrsInfo (\s a -> s {_uparrsInfo = a}) . _Default . _Map

-- | Information about the provisioning artifact.
uparrsProvisioningArtifactDetail :: Lens' UpdateProvisioningArtifactResponse (Maybe ProvisioningArtifactDetail)
uparrsProvisioningArtifactDetail = lens _uparrsProvisioningArtifactDetail (\s a -> s {_uparrsProvisioningArtifactDetail = a})

-- | -- | The response status code.
uparrsResponseStatus :: Lens' UpdateProvisioningArtifactResponse Int
uparrsResponseStatus = lens _uparrsResponseStatus (\s a -> s {_uparrsResponseStatus = a})

instance NFData UpdateProvisioningArtifactResponse
