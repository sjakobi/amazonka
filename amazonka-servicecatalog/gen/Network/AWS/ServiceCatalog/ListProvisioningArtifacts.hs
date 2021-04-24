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
-- Module      : Network.AWS.ServiceCatalog.ListProvisioningArtifacts
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all provisioning artifacts (also known as versions) for the specified product.
module Network.AWS.ServiceCatalog.ListProvisioningArtifacts
  ( -- * Creating a Request
    listProvisioningArtifacts,
    ListProvisioningArtifacts,

    -- * Request Lenses
    lAcceptLanguage,
    lProductId,

    -- * Destructuring the Response
    listProvisioningArtifactsResponse,
    ListProvisioningArtifactsResponse,

    -- * Response Lenses
    lisrsNextPageToken,
    lisrsProvisioningArtifactDetails,
    lisrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'listProvisioningArtifacts' smart constructor.
data ListProvisioningArtifacts = ListProvisioningArtifacts'
  { _lAcceptLanguage ::
      !(Maybe Text),
    _lProductId ::
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

-- | Creates a value of 'ListProvisioningArtifacts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'lProductId' - The product identifier.
listProvisioningArtifacts ::
  -- | 'lProductId'
  Text ->
  ListProvisioningArtifacts
listProvisioningArtifacts pProductId_ =
  ListProvisioningArtifacts'
    { _lAcceptLanguage =
        Nothing,
      _lProductId = pProductId_
    }

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
lAcceptLanguage :: Lens' ListProvisioningArtifacts (Maybe Text)
lAcceptLanguage = lens _lAcceptLanguage (\s a -> s {_lAcceptLanguage = a})

-- | The product identifier.
lProductId :: Lens' ListProvisioningArtifacts Text
lProductId = lens _lProductId (\s a -> s {_lProductId = a})

instance AWSRequest ListProvisioningArtifacts where
  type
    Rs ListProvisioningArtifacts =
      ListProvisioningArtifactsResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          ListProvisioningArtifactsResponse'
            <$> (x .?> "NextPageToken")
            <*> (x .?> "ProvisioningArtifactDetails" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListProvisioningArtifacts

instance NFData ListProvisioningArtifacts

instance ToHeaders ListProvisioningArtifacts where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.ListProvisioningArtifacts" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListProvisioningArtifacts where
  toJSON ListProvisioningArtifacts' {..} =
    object
      ( catMaybes
          [ ("AcceptLanguage" .=) <$> _lAcceptLanguage,
            Just ("ProductId" .= _lProductId)
          ]
      )

instance ToPath ListProvisioningArtifacts where
  toPath = const "/"

instance ToQuery ListProvisioningArtifacts where
  toQuery = const mempty

-- | /See:/ 'listProvisioningArtifactsResponse' smart constructor.
data ListProvisioningArtifactsResponse = ListProvisioningArtifactsResponse'
  { _lisrsNextPageToken ::
      !( Maybe
           Text
       ),
    _lisrsProvisioningArtifactDetails ::
      !( Maybe
           [ProvisioningArtifactDetail]
       ),
    _lisrsResponseStatus ::
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

-- | Creates a value of 'ListProvisioningArtifactsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lisrsNextPageToken' - The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
--
-- * 'lisrsProvisioningArtifactDetails' - Information about the provisioning artifacts.
--
-- * 'lisrsResponseStatus' - -- | The response status code.
listProvisioningArtifactsResponse ::
  -- | 'lisrsResponseStatus'
  Int ->
  ListProvisioningArtifactsResponse
listProvisioningArtifactsResponse pResponseStatus_ =
  ListProvisioningArtifactsResponse'
    { _lisrsNextPageToken =
        Nothing,
      _lisrsProvisioningArtifactDetails =
        Nothing,
      _lisrsResponseStatus = pResponseStatus_
    }

-- | The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
lisrsNextPageToken :: Lens' ListProvisioningArtifactsResponse (Maybe Text)
lisrsNextPageToken = lens _lisrsNextPageToken (\s a -> s {_lisrsNextPageToken = a})

-- | Information about the provisioning artifacts.
lisrsProvisioningArtifactDetails :: Lens' ListProvisioningArtifactsResponse [ProvisioningArtifactDetail]
lisrsProvisioningArtifactDetails = lens _lisrsProvisioningArtifactDetails (\s a -> s {_lisrsProvisioningArtifactDetails = a}) . _Default . _Coerce

-- | -- | The response status code.
lisrsResponseStatus :: Lens' ListProvisioningArtifactsResponse Int
lisrsResponseStatus = lens _lisrsResponseStatus (\s a -> s {_lisrsResponseStatus = a})

instance NFData ListProvisioningArtifactsResponse
