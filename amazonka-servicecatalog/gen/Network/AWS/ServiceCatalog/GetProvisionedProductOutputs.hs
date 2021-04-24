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
-- Module      : Network.AWS.ServiceCatalog.GetProvisionedProductOutputs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API takes either a @ProvisonedProductId@ or a @ProvisionedProductName@ , along with a list of one or more output keys, and responds with the key/value pairs of those outputs.
module Network.AWS.ServiceCatalog.GetProvisionedProductOutputs
  ( -- * Creating a Request
    getProvisionedProductOutputs,
    GetProvisionedProductOutputs,

    -- * Request Lenses
    gppoProvisionedProductName,
    gppoProvisionedProductId,
    gppoPageSize,
    gppoOutputKeys,
    gppoPageToken,
    gppoAcceptLanguage,

    -- * Destructuring the Response
    getProvisionedProductOutputsResponse,
    GetProvisionedProductOutputsResponse,

    -- * Response Lenses
    gpporrsOutputs,
    gpporrsNextPageToken,
    gpporrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'getProvisionedProductOutputs' smart constructor.
data GetProvisionedProductOutputs = GetProvisionedProductOutputs'
  { _gppoProvisionedProductName ::
      !(Maybe Text),
    _gppoProvisionedProductId ::
      !(Maybe Text),
    _gppoPageSize ::
      !(Maybe Nat),
    _gppoOutputKeys ::
      !( Maybe
           [Text]
       ),
    _gppoPageToken ::
      !(Maybe Text),
    _gppoAcceptLanguage ::
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

-- | Creates a value of 'GetProvisionedProductOutputs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gppoProvisionedProductName' - The name of the provisioned product that you want the outputs from.
--
-- * 'gppoProvisionedProductId' - The identifier of the provisioned product that you want the outputs from.
--
-- * 'gppoPageSize' - The maximum number of items to return with this call.
--
-- * 'gppoOutputKeys' - The list of keys that the API should return with their values. If none are provided, the API will return all outputs of the provisioned product.
--
-- * 'gppoPageToken' - The page token for the next set of results. To retrieve the first set of results, use null.
--
-- * 'gppoAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
getProvisionedProductOutputs ::
  GetProvisionedProductOutputs
getProvisionedProductOutputs =
  GetProvisionedProductOutputs'
    { _gppoProvisionedProductName =
        Nothing,
      _gppoProvisionedProductId = Nothing,
      _gppoPageSize = Nothing,
      _gppoOutputKeys = Nothing,
      _gppoPageToken = Nothing,
      _gppoAcceptLanguage = Nothing
    }

-- | The name of the provisioned product that you want the outputs from.
gppoProvisionedProductName :: Lens' GetProvisionedProductOutputs (Maybe Text)
gppoProvisionedProductName = lens _gppoProvisionedProductName (\s a -> s {_gppoProvisionedProductName = a})

-- | The identifier of the provisioned product that you want the outputs from.
gppoProvisionedProductId :: Lens' GetProvisionedProductOutputs (Maybe Text)
gppoProvisionedProductId = lens _gppoProvisionedProductId (\s a -> s {_gppoProvisionedProductId = a})

-- | The maximum number of items to return with this call.
gppoPageSize :: Lens' GetProvisionedProductOutputs (Maybe Natural)
gppoPageSize = lens _gppoPageSize (\s a -> s {_gppoPageSize = a}) . mapping _Nat

-- | The list of keys that the API should return with their values. If none are provided, the API will return all outputs of the provisioned product.
gppoOutputKeys :: Lens' GetProvisionedProductOutputs [Text]
gppoOutputKeys = lens _gppoOutputKeys (\s a -> s {_gppoOutputKeys = a}) . _Default . _Coerce

-- | The page token for the next set of results. To retrieve the first set of results, use null.
gppoPageToken :: Lens' GetProvisionedProductOutputs (Maybe Text)
gppoPageToken = lens _gppoPageToken (\s a -> s {_gppoPageToken = a})

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
gppoAcceptLanguage :: Lens' GetProvisionedProductOutputs (Maybe Text)
gppoAcceptLanguage = lens _gppoAcceptLanguage (\s a -> s {_gppoAcceptLanguage = a})

instance AWSRequest GetProvisionedProductOutputs where
  type
    Rs GetProvisionedProductOutputs =
      GetProvisionedProductOutputsResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          GetProvisionedProductOutputsResponse'
            <$> (x .?> "Outputs" .!@ mempty)
            <*> (x .?> "NextPageToken")
            <*> (pure (fromEnum s))
      )

instance Hashable GetProvisionedProductOutputs

instance NFData GetProvisionedProductOutputs

instance ToHeaders GetProvisionedProductOutputs where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.GetProvisionedProductOutputs" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetProvisionedProductOutputs where
  toJSON GetProvisionedProductOutputs' {..} =
    object
      ( catMaybes
          [ ("ProvisionedProductName" .=)
              <$> _gppoProvisionedProductName,
            ("ProvisionedProductId" .=)
              <$> _gppoProvisionedProductId,
            ("PageSize" .=) <$> _gppoPageSize,
            ("OutputKeys" .=) <$> _gppoOutputKeys,
            ("PageToken" .=) <$> _gppoPageToken,
            ("AcceptLanguage" .=) <$> _gppoAcceptLanguage
          ]
      )

instance ToPath GetProvisionedProductOutputs where
  toPath = const "/"

instance ToQuery GetProvisionedProductOutputs where
  toQuery = const mempty

-- | /See:/ 'getProvisionedProductOutputsResponse' smart constructor.
data GetProvisionedProductOutputsResponse = GetProvisionedProductOutputsResponse'
  { _gpporrsOutputs ::
      !( Maybe
           [RecordOutput]
       ),
    _gpporrsNextPageToken ::
      !( Maybe
           Text
       ),
    _gpporrsResponseStatus ::
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

-- | Creates a value of 'GetProvisionedProductOutputsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpporrsOutputs' - Information about the product created as the result of a request. For example, the output for a CloudFormation-backed product that creates an S3 bucket would include the S3 bucket URL.
--
-- * 'gpporrsNextPageToken' - The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
--
-- * 'gpporrsResponseStatus' - -- | The response status code.
getProvisionedProductOutputsResponse ::
  -- | 'gpporrsResponseStatus'
  Int ->
  GetProvisionedProductOutputsResponse
getProvisionedProductOutputsResponse pResponseStatus_ =
  GetProvisionedProductOutputsResponse'
    { _gpporrsOutputs =
        Nothing,
      _gpporrsNextPageToken = Nothing,
      _gpporrsResponseStatus =
        pResponseStatus_
    }

-- | Information about the product created as the result of a request. For example, the output for a CloudFormation-backed product that creates an S3 bucket would include the S3 bucket URL.
gpporrsOutputs :: Lens' GetProvisionedProductOutputsResponse [RecordOutput]
gpporrsOutputs = lens _gpporrsOutputs (\s a -> s {_gpporrsOutputs = a}) . _Default . _Coerce

-- | The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
gpporrsNextPageToken :: Lens' GetProvisionedProductOutputsResponse (Maybe Text)
gpporrsNextPageToken = lens _gpporrsNextPageToken (\s a -> s {_gpporrsNextPageToken = a})

-- | -- | The response status code.
gpporrsResponseStatus :: Lens' GetProvisionedProductOutputsResponse Int
gpporrsResponseStatus = lens _gpporrsResponseStatus (\s a -> s {_gpporrsResponseStatus = a})

instance NFData GetProvisionedProductOutputsResponse
