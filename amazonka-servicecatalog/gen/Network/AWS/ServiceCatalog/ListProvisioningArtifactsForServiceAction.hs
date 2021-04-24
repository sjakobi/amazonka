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
-- Module      : Network.AWS.ServiceCatalog.ListProvisioningArtifactsForServiceAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all provisioning artifacts (also known as versions) for the specified self-service action.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ServiceCatalog.ListProvisioningArtifactsForServiceAction
  ( -- * Creating a Request
    listProvisioningArtifactsForServiceAction,
    ListProvisioningArtifactsForServiceAction,

    -- * Request Lenses
    lpafsaPageSize,
    lpafsaPageToken,
    lpafsaAcceptLanguage,
    lpafsaServiceActionId,

    -- * Destructuring the Response
    listProvisioningArtifactsForServiceActionResponse,
    ListProvisioningArtifactsForServiceActionResponse,

    -- * Response Lenses
    lpafsarrsProvisioningArtifactViews,
    lpafsarrsNextPageToken,
    lpafsarrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'listProvisioningArtifactsForServiceAction' smart constructor.
data ListProvisioningArtifactsForServiceAction = ListProvisioningArtifactsForServiceAction'
  { _lpafsaPageSize ::
      !( Maybe
           Nat
       ),
    _lpafsaPageToken ::
      !( Maybe
           Text
       ),
    _lpafsaAcceptLanguage ::
      !( Maybe
           Text
       ),
    _lpafsaServiceActionId ::
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

-- | Creates a value of 'ListProvisioningArtifactsForServiceAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpafsaPageSize' - The maximum number of items to return with this call.
--
-- * 'lpafsaPageToken' - The page token for the next set of results. To retrieve the first set of results, use null.
--
-- * 'lpafsaAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'lpafsaServiceActionId' - The self-service action identifier. For example, @act-fs7abcd89wxyz@ .
listProvisioningArtifactsForServiceAction ::
  -- | 'lpafsaServiceActionId'
  Text ->
  ListProvisioningArtifactsForServiceAction
listProvisioningArtifactsForServiceAction
  pServiceActionId_ =
    ListProvisioningArtifactsForServiceAction'
      { _lpafsaPageSize =
          Nothing,
        _lpafsaPageToken = Nothing,
        _lpafsaAcceptLanguage = Nothing,
        _lpafsaServiceActionId =
          pServiceActionId_
      }

-- | The maximum number of items to return with this call.
lpafsaPageSize :: Lens' ListProvisioningArtifactsForServiceAction (Maybe Natural)
lpafsaPageSize = lens _lpafsaPageSize (\s a -> s {_lpafsaPageSize = a}) . mapping _Nat

-- | The page token for the next set of results. To retrieve the first set of results, use null.
lpafsaPageToken :: Lens' ListProvisioningArtifactsForServiceAction (Maybe Text)
lpafsaPageToken = lens _lpafsaPageToken (\s a -> s {_lpafsaPageToken = a})

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
lpafsaAcceptLanguage :: Lens' ListProvisioningArtifactsForServiceAction (Maybe Text)
lpafsaAcceptLanguage = lens _lpafsaAcceptLanguage (\s a -> s {_lpafsaAcceptLanguage = a})

-- | The self-service action identifier. For example, @act-fs7abcd89wxyz@ .
lpafsaServiceActionId :: Lens' ListProvisioningArtifactsForServiceAction Text
lpafsaServiceActionId = lens _lpafsaServiceActionId (\s a -> s {_lpafsaServiceActionId = a})

instance
  AWSPager
    ListProvisioningArtifactsForServiceAction
  where
  page rq rs
    | stop (rs ^. lpafsarrsNextPageToken) = Nothing
    | stop (rs ^. lpafsarrsProvisioningArtifactViews) =
      Nothing
    | otherwise =
      Just $
        rq
          & lpafsaPageToken .~ rs ^. lpafsarrsNextPageToken

instance
  AWSRequest
    ListProvisioningArtifactsForServiceAction
  where
  type
    Rs ListProvisioningArtifactsForServiceAction =
      ListProvisioningArtifactsForServiceActionResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          ListProvisioningArtifactsForServiceActionResponse'
            <$> (x .?> "ProvisioningArtifactViews" .!@ mempty)
              <*> (x .?> "NextPageToken")
              <*> (pure (fromEnum s))
      )

instance
  Hashable
    ListProvisioningArtifactsForServiceAction

instance
  NFData
    ListProvisioningArtifactsForServiceAction

instance
  ToHeaders
    ListProvisioningArtifactsForServiceAction
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.ListProvisioningArtifactsForServiceAction" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    ListProvisioningArtifactsForServiceAction
  where
  toJSON ListProvisioningArtifactsForServiceAction' {..} =
    object
      ( catMaybes
          [ ("PageSize" .=) <$> _lpafsaPageSize,
            ("PageToken" .=) <$> _lpafsaPageToken,
            ("AcceptLanguage" .=) <$> _lpafsaAcceptLanguage,
            Just ("ServiceActionId" .= _lpafsaServiceActionId)
          ]
      )

instance
  ToPath
    ListProvisioningArtifactsForServiceAction
  where
  toPath = const "/"

instance
  ToQuery
    ListProvisioningArtifactsForServiceAction
  where
  toQuery = const mempty

-- | /See:/ 'listProvisioningArtifactsForServiceActionResponse' smart constructor.
data ListProvisioningArtifactsForServiceActionResponse = ListProvisioningArtifactsForServiceActionResponse'
  { _lpafsarrsProvisioningArtifactViews ::
      !( Maybe
           [ProvisioningArtifactView]
       ),
    _lpafsarrsNextPageToken ::
      !( Maybe
           Text
       ),
    _lpafsarrsResponseStatus ::
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

-- | Creates a value of 'ListProvisioningArtifactsForServiceActionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpafsarrsProvisioningArtifactViews' - An array of objects with information about product views and provisioning artifacts.
--
-- * 'lpafsarrsNextPageToken' - The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
--
-- * 'lpafsarrsResponseStatus' - -- | The response status code.
listProvisioningArtifactsForServiceActionResponse ::
  -- | 'lpafsarrsResponseStatus'
  Int ->
  ListProvisioningArtifactsForServiceActionResponse
listProvisioningArtifactsForServiceActionResponse
  pResponseStatus_ =
    ListProvisioningArtifactsForServiceActionResponse'
      { _lpafsarrsProvisioningArtifactViews =
          Nothing,
        _lpafsarrsNextPageToken =
          Nothing,
        _lpafsarrsResponseStatus =
          pResponseStatus_
      }

-- | An array of objects with information about product views and provisioning artifacts.
lpafsarrsProvisioningArtifactViews :: Lens' ListProvisioningArtifactsForServiceActionResponse [ProvisioningArtifactView]
lpafsarrsProvisioningArtifactViews = lens _lpafsarrsProvisioningArtifactViews (\s a -> s {_lpafsarrsProvisioningArtifactViews = a}) . _Default . _Coerce

-- | The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
lpafsarrsNextPageToken :: Lens' ListProvisioningArtifactsForServiceActionResponse (Maybe Text)
lpafsarrsNextPageToken = lens _lpafsarrsNextPageToken (\s a -> s {_lpafsarrsNextPageToken = a})

-- | -- | The response status code.
lpafsarrsResponseStatus :: Lens' ListProvisioningArtifactsForServiceActionResponse Int
lpafsarrsResponseStatus = lens _lpafsarrsResponseStatus (\s a -> s {_lpafsarrsResponseStatus = a})

instance
  NFData
    ListProvisioningArtifactsForServiceActionResponse
