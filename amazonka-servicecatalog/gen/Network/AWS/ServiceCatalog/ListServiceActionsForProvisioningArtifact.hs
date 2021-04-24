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
-- Module      : Network.AWS.ServiceCatalog.ListServiceActionsForProvisioningArtifact
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a paginated list of self-service actions associated with the specified Product ID and Provisioning Artifact ID.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ServiceCatalog.ListServiceActionsForProvisioningArtifact
  ( -- * Creating a Request
    listServiceActionsForProvisioningArtifact,
    ListServiceActionsForProvisioningArtifact,

    -- * Request Lenses
    lsafpaPageSize,
    lsafpaPageToken,
    lsafpaAcceptLanguage,
    lsafpaProductId,
    lsafpaProvisioningArtifactId,

    -- * Destructuring the Response
    listServiceActionsForProvisioningArtifactResponse,
    ListServiceActionsForProvisioningArtifactResponse,

    -- * Response Lenses
    lsafparrsNextPageToken,
    lsafparrsServiceActionSummaries,
    lsafparrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'listServiceActionsForProvisioningArtifact' smart constructor.
data ListServiceActionsForProvisioningArtifact = ListServiceActionsForProvisioningArtifact'
  { _lsafpaPageSize ::
      !( Maybe
           Nat
       ),
    _lsafpaPageToken ::
      !( Maybe
           Text
       ),
    _lsafpaAcceptLanguage ::
      !( Maybe
           Text
       ),
    _lsafpaProductId ::
      !Text,
    _lsafpaProvisioningArtifactId ::
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

-- | Creates a value of 'ListServiceActionsForProvisioningArtifact' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsafpaPageSize' - The maximum number of items to return with this call.
--
-- * 'lsafpaPageToken' - The page token for the next set of results. To retrieve the first set of results, use null.
--
-- * 'lsafpaAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'lsafpaProductId' - The product identifier. For example, @prod-abcdzk7xy33qa@ .
--
-- * 'lsafpaProvisioningArtifactId' - The identifier of the provisioning artifact. For example, @pa-4abcdjnxjj6ne@ .
listServiceActionsForProvisioningArtifact ::
  -- | 'lsafpaProductId'
  Text ->
  -- | 'lsafpaProvisioningArtifactId'
  Text ->
  ListServiceActionsForProvisioningArtifact
listServiceActionsForProvisioningArtifact
  pProductId_
  pProvisioningArtifactId_ =
    ListServiceActionsForProvisioningArtifact'
      { _lsafpaPageSize =
          Nothing,
        _lsafpaPageToken = Nothing,
        _lsafpaAcceptLanguage = Nothing,
        _lsafpaProductId = pProductId_,
        _lsafpaProvisioningArtifactId =
          pProvisioningArtifactId_
      }

-- | The maximum number of items to return with this call.
lsafpaPageSize :: Lens' ListServiceActionsForProvisioningArtifact (Maybe Natural)
lsafpaPageSize = lens _lsafpaPageSize (\s a -> s {_lsafpaPageSize = a}) . mapping _Nat

-- | The page token for the next set of results. To retrieve the first set of results, use null.
lsafpaPageToken :: Lens' ListServiceActionsForProvisioningArtifact (Maybe Text)
lsafpaPageToken = lens _lsafpaPageToken (\s a -> s {_lsafpaPageToken = a})

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
lsafpaAcceptLanguage :: Lens' ListServiceActionsForProvisioningArtifact (Maybe Text)
lsafpaAcceptLanguage = lens _lsafpaAcceptLanguage (\s a -> s {_lsafpaAcceptLanguage = a})

-- | The product identifier. For example, @prod-abcdzk7xy33qa@ .
lsafpaProductId :: Lens' ListServiceActionsForProvisioningArtifact Text
lsafpaProductId = lens _lsafpaProductId (\s a -> s {_lsafpaProductId = a})

-- | The identifier of the provisioning artifact. For example, @pa-4abcdjnxjj6ne@ .
lsafpaProvisioningArtifactId :: Lens' ListServiceActionsForProvisioningArtifact Text
lsafpaProvisioningArtifactId = lens _lsafpaProvisioningArtifactId (\s a -> s {_lsafpaProvisioningArtifactId = a})

instance
  AWSPager
    ListServiceActionsForProvisioningArtifact
  where
  page rq rs
    | stop (rs ^. lsafparrsNextPageToken) = Nothing
    | stop (rs ^. lsafparrsServiceActionSummaries) =
      Nothing
    | otherwise =
      Just $
        rq
          & lsafpaPageToken .~ rs ^. lsafparrsNextPageToken

instance
  AWSRequest
    ListServiceActionsForProvisioningArtifact
  where
  type
    Rs ListServiceActionsForProvisioningArtifact =
      ListServiceActionsForProvisioningArtifactResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          ListServiceActionsForProvisioningArtifactResponse'
            <$> (x .?> "NextPageToken")
              <*> (x .?> "ServiceActionSummaries" .!@ mempty)
              <*> (pure (fromEnum s))
      )

instance
  Hashable
    ListServiceActionsForProvisioningArtifact

instance
  NFData
    ListServiceActionsForProvisioningArtifact

instance
  ToHeaders
    ListServiceActionsForProvisioningArtifact
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.ListServiceActionsForProvisioningArtifact" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    ListServiceActionsForProvisioningArtifact
  where
  toJSON ListServiceActionsForProvisioningArtifact' {..} =
    object
      ( catMaybes
          [ ("PageSize" .=) <$> _lsafpaPageSize,
            ("PageToken" .=) <$> _lsafpaPageToken,
            ("AcceptLanguage" .=) <$> _lsafpaAcceptLanguage,
            Just ("ProductId" .= _lsafpaProductId),
            Just
              ( "ProvisioningArtifactId"
                  .= _lsafpaProvisioningArtifactId
              )
          ]
      )

instance
  ToPath
    ListServiceActionsForProvisioningArtifact
  where
  toPath = const "/"

instance
  ToQuery
    ListServiceActionsForProvisioningArtifact
  where
  toQuery = const mempty

-- | /See:/ 'listServiceActionsForProvisioningArtifactResponse' smart constructor.
data ListServiceActionsForProvisioningArtifactResponse = ListServiceActionsForProvisioningArtifactResponse'
  { _lsafparrsNextPageToken ::
      !( Maybe
           Text
       ),
    _lsafparrsServiceActionSummaries ::
      !( Maybe
           [ServiceActionSummary]
       ),
    _lsafparrsResponseStatus ::
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

-- | Creates a value of 'ListServiceActionsForProvisioningArtifactResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsafparrsNextPageToken' - The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
--
-- * 'lsafparrsServiceActionSummaries' - An object containing information about the self-service actions associated with the provisioning artifact.
--
-- * 'lsafparrsResponseStatus' - -- | The response status code.
listServiceActionsForProvisioningArtifactResponse ::
  -- | 'lsafparrsResponseStatus'
  Int ->
  ListServiceActionsForProvisioningArtifactResponse
listServiceActionsForProvisioningArtifactResponse
  pResponseStatus_ =
    ListServiceActionsForProvisioningArtifactResponse'
      { _lsafparrsNextPageToken =
          Nothing,
        _lsafparrsServiceActionSummaries =
          Nothing,
        _lsafparrsResponseStatus =
          pResponseStatus_
      }

-- | The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
lsafparrsNextPageToken :: Lens' ListServiceActionsForProvisioningArtifactResponse (Maybe Text)
lsafparrsNextPageToken = lens _lsafparrsNextPageToken (\s a -> s {_lsafparrsNextPageToken = a})

-- | An object containing information about the self-service actions associated with the provisioning artifact.
lsafparrsServiceActionSummaries :: Lens' ListServiceActionsForProvisioningArtifactResponse [ServiceActionSummary]
lsafparrsServiceActionSummaries = lens _lsafparrsServiceActionSummaries (\s a -> s {_lsafparrsServiceActionSummaries = a}) . _Default . _Coerce

-- | -- | The response status code.
lsafparrsResponseStatus :: Lens' ListServiceActionsForProvisioningArtifactResponse Int
lsafparrsResponseStatus = lens _lsafparrsResponseStatus (\s a -> s {_lsafparrsResponseStatus = a})

instance
  NFData
    ListServiceActionsForProvisioningArtifactResponse
