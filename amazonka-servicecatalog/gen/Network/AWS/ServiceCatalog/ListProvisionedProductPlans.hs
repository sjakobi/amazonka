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
-- Module      : Network.AWS.ServiceCatalog.ListProvisionedProductPlans
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the plans for the specified provisioned product or all plans to which the user has access.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ServiceCatalog.ListProvisionedProductPlans
  ( -- * Creating a Request
    listProvisionedProductPlans,
    ListProvisionedProductPlans,

    -- * Request Lenses
    lpppProvisionProductId,
    lpppPageSize,
    lpppPageToken,
    lpppAccessLevelFilter,
    lpppAcceptLanguage,

    -- * Destructuring the Response
    listProvisionedProductPlansResponse,
    ListProvisionedProductPlansResponse,

    -- * Response Lenses
    lppprrsNextPageToken,
    lppprrsProvisionedProductPlans,
    lppprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'listProvisionedProductPlans' smart constructor.
data ListProvisionedProductPlans = ListProvisionedProductPlans'
  { _lpppProvisionProductId ::
      !(Maybe Text),
    _lpppPageSize ::
      !(Maybe Nat),
    _lpppPageToken ::
      !(Maybe Text),
    _lpppAccessLevelFilter ::
      !( Maybe
           AccessLevelFilter
       ),
    _lpppAcceptLanguage ::
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

-- | Creates a value of 'ListProvisionedProductPlans' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpppProvisionProductId' - The product identifier.
--
-- * 'lpppPageSize' - The maximum number of items to return with this call.
--
-- * 'lpppPageToken' - The page token for the next set of results. To retrieve the first set of results, use null.
--
-- * 'lpppAccessLevelFilter' - The access level to use to obtain results. The default is @User@ .
--
-- * 'lpppAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
listProvisionedProductPlans ::
  ListProvisionedProductPlans
listProvisionedProductPlans =
  ListProvisionedProductPlans'
    { _lpppProvisionProductId =
        Nothing,
      _lpppPageSize = Nothing,
      _lpppPageToken = Nothing,
      _lpppAccessLevelFilter = Nothing,
      _lpppAcceptLanguage = Nothing
    }

-- | The product identifier.
lpppProvisionProductId :: Lens' ListProvisionedProductPlans (Maybe Text)
lpppProvisionProductId = lens _lpppProvisionProductId (\s a -> s {_lpppProvisionProductId = a})

-- | The maximum number of items to return with this call.
lpppPageSize :: Lens' ListProvisionedProductPlans (Maybe Natural)
lpppPageSize = lens _lpppPageSize (\s a -> s {_lpppPageSize = a}) . mapping _Nat

-- | The page token for the next set of results. To retrieve the first set of results, use null.
lpppPageToken :: Lens' ListProvisionedProductPlans (Maybe Text)
lpppPageToken = lens _lpppPageToken (\s a -> s {_lpppPageToken = a})

-- | The access level to use to obtain results. The default is @User@ .
lpppAccessLevelFilter :: Lens' ListProvisionedProductPlans (Maybe AccessLevelFilter)
lpppAccessLevelFilter = lens _lpppAccessLevelFilter (\s a -> s {_lpppAccessLevelFilter = a})

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
lpppAcceptLanguage :: Lens' ListProvisionedProductPlans (Maybe Text)
lpppAcceptLanguage = lens _lpppAcceptLanguage (\s a -> s {_lpppAcceptLanguage = a})

instance AWSPager ListProvisionedProductPlans where
  page rq rs
    | stop (rs ^. lppprrsNextPageToken) = Nothing
    | stop (rs ^. lppprrsProvisionedProductPlans) =
      Nothing
    | otherwise =
      Just $
        rq
          & lpppPageToken .~ rs ^. lppprrsNextPageToken

instance AWSRequest ListProvisionedProductPlans where
  type
    Rs ListProvisionedProductPlans =
      ListProvisionedProductPlansResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          ListProvisionedProductPlansResponse'
            <$> (x .?> "NextPageToken")
            <*> (x .?> "ProvisionedProductPlans" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListProvisionedProductPlans

instance NFData ListProvisionedProductPlans

instance ToHeaders ListProvisionedProductPlans where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.ListProvisionedProductPlans" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListProvisionedProductPlans where
  toJSON ListProvisionedProductPlans' {..} =
    object
      ( catMaybes
          [ ("ProvisionProductId" .=)
              <$> _lpppProvisionProductId,
            ("PageSize" .=) <$> _lpppPageSize,
            ("PageToken" .=) <$> _lpppPageToken,
            ("AccessLevelFilter" .=) <$> _lpppAccessLevelFilter,
            ("AcceptLanguage" .=) <$> _lpppAcceptLanguage
          ]
      )

instance ToPath ListProvisionedProductPlans where
  toPath = const "/"

instance ToQuery ListProvisionedProductPlans where
  toQuery = const mempty

-- | /See:/ 'listProvisionedProductPlansResponse' smart constructor.
data ListProvisionedProductPlansResponse = ListProvisionedProductPlansResponse'
  { _lppprrsNextPageToken ::
      !( Maybe
           Text
       ),
    _lppprrsProvisionedProductPlans ::
      !( Maybe
           [ProvisionedProductPlanSummary]
       ),
    _lppprrsResponseStatus ::
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

-- | Creates a value of 'ListProvisionedProductPlansResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lppprrsNextPageToken' - The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
--
-- * 'lppprrsProvisionedProductPlans' - Information about the plans.
--
-- * 'lppprrsResponseStatus' - -- | The response status code.
listProvisionedProductPlansResponse ::
  -- | 'lppprrsResponseStatus'
  Int ->
  ListProvisionedProductPlansResponse
listProvisionedProductPlansResponse pResponseStatus_ =
  ListProvisionedProductPlansResponse'
    { _lppprrsNextPageToken =
        Nothing,
      _lppprrsProvisionedProductPlans =
        Nothing,
      _lppprrsResponseStatus =
        pResponseStatus_
    }

-- | The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
lppprrsNextPageToken :: Lens' ListProvisionedProductPlansResponse (Maybe Text)
lppprrsNextPageToken = lens _lppprrsNextPageToken (\s a -> s {_lppprrsNextPageToken = a})

-- | Information about the plans.
lppprrsProvisionedProductPlans :: Lens' ListProvisionedProductPlansResponse [ProvisionedProductPlanSummary]
lppprrsProvisionedProductPlans = lens _lppprrsProvisionedProductPlans (\s a -> s {_lppprrsProvisionedProductPlans = a}) . _Default . _Coerce

-- | -- | The response status code.
lppprrsResponseStatus :: Lens' ListProvisionedProductPlansResponse Int
lppprrsResponseStatus = lens _lppprrsResponseStatus (\s a -> s {_lppprrsResponseStatus = a})

instance NFData ListProvisionedProductPlansResponse
