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
-- Module      : Network.AWS.ServiceCatalog.DescribeProvisioningArtifact
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the specified provisioning artifact (also known as a version) for the specified product.
module Network.AWS.ServiceCatalog.DescribeProvisioningArtifact
  ( -- * Creating a Request
    describeProvisioningArtifact,
    DescribeProvisioningArtifact,

    -- * Request Lenses
    dpapProvisioningArtifactName,
    dpapProvisioningArtifactId,
    dpapProductName,
    dpapProductId,
    dpapVerbose,
    dpapAcceptLanguage,

    -- * Destructuring the Response
    describeProvisioningArtifactResponse,
    DescribeProvisioningArtifactResponse,

    -- * Response Lenses
    dparrsStatus,
    dparrsInfo,
    dparrsProvisioningArtifactDetail,
    dparrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'describeProvisioningArtifact' smart constructor.
data DescribeProvisioningArtifact = DescribeProvisioningArtifact'
  { _dpapProvisioningArtifactName ::
      !(Maybe Text),
    _dpapProvisioningArtifactId ::
      !(Maybe Text),
    _dpapProductName ::
      !(Maybe Text),
    _dpapProductId ::
      !(Maybe Text),
    _dpapVerbose ::
      !(Maybe Bool),
    _dpapAcceptLanguage ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeProvisioningArtifact' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpapProvisioningArtifactName' - The provisioning artifact name.
--
-- * 'dpapProvisioningArtifactId' - The identifier of the provisioning artifact.
--
-- * 'dpapProductName' - The product name.
--
-- * 'dpapProductId' - The product identifier.
--
-- * 'dpapVerbose' - Indicates whether a verbose level of detail is enabled.
--
-- * 'dpapAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
describeProvisioningArtifact ::
  DescribeProvisioningArtifact
describeProvisioningArtifact =
  DescribeProvisioningArtifact'
    { _dpapProvisioningArtifactName =
        Nothing,
      _dpapProvisioningArtifactId = Nothing,
      _dpapProductName = Nothing,
      _dpapProductId = Nothing,
      _dpapVerbose = Nothing,
      _dpapAcceptLanguage = Nothing
    }

-- | The provisioning artifact name.
dpapProvisioningArtifactName :: Lens' DescribeProvisioningArtifact (Maybe Text)
dpapProvisioningArtifactName = lens _dpapProvisioningArtifactName (\s a -> s {_dpapProvisioningArtifactName = a})

-- | The identifier of the provisioning artifact.
dpapProvisioningArtifactId :: Lens' DescribeProvisioningArtifact (Maybe Text)
dpapProvisioningArtifactId = lens _dpapProvisioningArtifactId (\s a -> s {_dpapProvisioningArtifactId = a})

-- | The product name.
dpapProductName :: Lens' DescribeProvisioningArtifact (Maybe Text)
dpapProductName = lens _dpapProductName (\s a -> s {_dpapProductName = a})

-- | The product identifier.
dpapProductId :: Lens' DescribeProvisioningArtifact (Maybe Text)
dpapProductId = lens _dpapProductId (\s a -> s {_dpapProductId = a})

-- | Indicates whether a verbose level of detail is enabled.
dpapVerbose :: Lens' DescribeProvisioningArtifact (Maybe Bool)
dpapVerbose = lens _dpapVerbose (\s a -> s {_dpapVerbose = a})

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
dpapAcceptLanguage :: Lens' DescribeProvisioningArtifact (Maybe Text)
dpapAcceptLanguage = lens _dpapAcceptLanguage (\s a -> s {_dpapAcceptLanguage = a})

instance AWSRequest DescribeProvisioningArtifact where
  type
    Rs DescribeProvisioningArtifact =
      DescribeProvisioningArtifactResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          DescribeProvisioningArtifactResponse'
            <$> (x .?> "Status")
            <*> (x .?> "Info" .!@ mempty)
            <*> (x .?> "ProvisioningArtifactDetail")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeProvisioningArtifact

instance NFData DescribeProvisioningArtifact

instance ToHeaders DescribeProvisioningArtifact where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.DescribeProvisioningArtifact" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeProvisioningArtifact where
  toJSON DescribeProvisioningArtifact' {..} =
    object
      ( catMaybes
          [ ("ProvisioningArtifactName" .=)
              <$> _dpapProvisioningArtifactName,
            ("ProvisioningArtifactId" .=)
              <$> _dpapProvisioningArtifactId,
            ("ProductName" .=) <$> _dpapProductName,
            ("ProductId" .=) <$> _dpapProductId,
            ("Verbose" .=) <$> _dpapVerbose,
            ("AcceptLanguage" .=) <$> _dpapAcceptLanguage
          ]
      )

instance ToPath DescribeProvisioningArtifact where
  toPath = const "/"

instance ToQuery DescribeProvisioningArtifact where
  toQuery = const mempty

-- | /See:/ 'describeProvisioningArtifactResponse' smart constructor.
data DescribeProvisioningArtifactResponse = DescribeProvisioningArtifactResponse'
  { _dparrsStatus ::
      !( Maybe
           RequestStatus
       ),
    _dparrsInfo ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _dparrsProvisioningArtifactDetail ::
      !( Maybe
           ProvisioningArtifactDetail
       ),
    _dparrsResponseStatus ::
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

-- | Creates a value of 'DescribeProvisioningArtifactResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dparrsStatus' - The status of the current request.
--
-- * 'dparrsInfo' - The URL of the CloudFormation template in Amazon S3.
--
-- * 'dparrsProvisioningArtifactDetail' - Information about the provisioning artifact.
--
-- * 'dparrsResponseStatus' - -- | The response status code.
describeProvisioningArtifactResponse ::
  -- | 'dparrsResponseStatus'
  Int ->
  DescribeProvisioningArtifactResponse
describeProvisioningArtifactResponse pResponseStatus_ =
  DescribeProvisioningArtifactResponse'
    { _dparrsStatus =
        Nothing,
      _dparrsInfo = Nothing,
      _dparrsProvisioningArtifactDetail =
        Nothing,
      _dparrsResponseStatus =
        pResponseStatus_
    }

-- | The status of the current request.
dparrsStatus :: Lens' DescribeProvisioningArtifactResponse (Maybe RequestStatus)
dparrsStatus = lens _dparrsStatus (\s a -> s {_dparrsStatus = a})

-- | The URL of the CloudFormation template in Amazon S3.
dparrsInfo :: Lens' DescribeProvisioningArtifactResponse (HashMap Text Text)
dparrsInfo = lens _dparrsInfo (\s a -> s {_dparrsInfo = a}) . _Default . _Map

-- | Information about the provisioning artifact.
dparrsProvisioningArtifactDetail :: Lens' DescribeProvisioningArtifactResponse (Maybe ProvisioningArtifactDetail)
dparrsProvisioningArtifactDetail = lens _dparrsProvisioningArtifactDetail (\s a -> s {_dparrsProvisioningArtifactDetail = a})

-- | -- | The response status code.
dparrsResponseStatus :: Lens' DescribeProvisioningArtifactResponse Int
dparrsResponseStatus = lens _dparrsResponseStatus (\s a -> s {_dparrsResponseStatus = a})

instance NFData DescribeProvisioningArtifactResponse
