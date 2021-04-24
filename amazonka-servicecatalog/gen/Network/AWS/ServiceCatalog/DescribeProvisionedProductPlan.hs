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
-- Module      : Network.AWS.ServiceCatalog.DescribeProvisionedProductPlan
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the resource changes for the specified plan.
module Network.AWS.ServiceCatalog.DescribeProvisionedProductPlan
  ( -- * Creating a Request
    describeProvisionedProductPlan,
    DescribeProvisionedProductPlan,

    -- * Request Lenses
    dppppPageSize,
    dppppPageToken,
    dppppAcceptLanguage,
    dppppPlanId,

    -- * Destructuring the Response
    describeProvisionedProductPlanResponse,
    DescribeProvisionedProductPlanResponse,

    -- * Response Lenses
    dppprrsResourceChanges,
    dppprrsNextPageToken,
    dppprrsProvisionedProductPlanDetails,
    dppprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'describeProvisionedProductPlan' smart constructor.
data DescribeProvisionedProductPlan = DescribeProvisionedProductPlan'
  { _dppppPageSize ::
      !( Maybe
           Nat
       ),
    _dppppPageToken ::
      !( Maybe
           Text
       ),
    _dppppAcceptLanguage ::
      !( Maybe
           Text
       ),
    _dppppPlanId ::
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

-- | Creates a value of 'DescribeProvisionedProductPlan' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dppppPageSize' - The maximum number of items to return with this call.
--
-- * 'dppppPageToken' - The page token for the next set of results. To retrieve the first set of results, use null.
--
-- * 'dppppAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'dppppPlanId' - The plan identifier.
describeProvisionedProductPlan ::
  -- | 'dppppPlanId'
  Text ->
  DescribeProvisionedProductPlan
describeProvisionedProductPlan pPlanId_ =
  DescribeProvisionedProductPlan'
    { _dppppPageSize =
        Nothing,
      _dppppPageToken = Nothing,
      _dppppAcceptLanguage = Nothing,
      _dppppPlanId = pPlanId_
    }

-- | The maximum number of items to return with this call.
dppppPageSize :: Lens' DescribeProvisionedProductPlan (Maybe Natural)
dppppPageSize = lens _dppppPageSize (\s a -> s {_dppppPageSize = a}) . mapping _Nat

-- | The page token for the next set of results. To retrieve the first set of results, use null.
dppppPageToken :: Lens' DescribeProvisionedProductPlan (Maybe Text)
dppppPageToken = lens _dppppPageToken (\s a -> s {_dppppPageToken = a})

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
dppppAcceptLanguage :: Lens' DescribeProvisionedProductPlan (Maybe Text)
dppppAcceptLanguage = lens _dppppAcceptLanguage (\s a -> s {_dppppAcceptLanguage = a})

-- | The plan identifier.
dppppPlanId :: Lens' DescribeProvisionedProductPlan Text
dppppPlanId = lens _dppppPlanId (\s a -> s {_dppppPlanId = a})

instance AWSRequest DescribeProvisionedProductPlan where
  type
    Rs DescribeProvisionedProductPlan =
      DescribeProvisionedProductPlanResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          DescribeProvisionedProductPlanResponse'
            <$> (x .?> "ResourceChanges" .!@ mempty)
            <*> (x .?> "NextPageToken")
            <*> (x .?> "ProvisionedProductPlanDetails")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeProvisionedProductPlan

instance NFData DescribeProvisionedProductPlan

instance ToHeaders DescribeProvisionedProductPlan where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.DescribeProvisionedProductPlan" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeProvisionedProductPlan where
  toJSON DescribeProvisionedProductPlan' {..} =
    object
      ( catMaybes
          [ ("PageSize" .=) <$> _dppppPageSize,
            ("PageToken" .=) <$> _dppppPageToken,
            ("AcceptLanguage" .=) <$> _dppppAcceptLanguage,
            Just ("PlanId" .= _dppppPlanId)
          ]
      )

instance ToPath DescribeProvisionedProductPlan where
  toPath = const "/"

instance ToQuery DescribeProvisionedProductPlan where
  toQuery = const mempty

-- | /See:/ 'describeProvisionedProductPlanResponse' smart constructor.
data DescribeProvisionedProductPlanResponse = DescribeProvisionedProductPlanResponse'
  { _dppprrsResourceChanges ::
      !( Maybe
           [ResourceChange]
       ),
    _dppprrsNextPageToken ::
      !( Maybe
           Text
       ),
    _dppprrsProvisionedProductPlanDetails ::
      !( Maybe
           ProvisionedProductPlanDetails
       ),
    _dppprrsResponseStatus ::
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

-- | Creates a value of 'DescribeProvisionedProductPlanResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dppprrsResourceChanges' - Information about the resource changes that will occur when the plan is executed.
--
-- * 'dppprrsNextPageToken' - The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
--
-- * 'dppprrsProvisionedProductPlanDetails' - Information about the plan.
--
-- * 'dppprrsResponseStatus' - -- | The response status code.
describeProvisionedProductPlanResponse ::
  -- | 'dppprrsResponseStatus'
  Int ->
  DescribeProvisionedProductPlanResponse
describeProvisionedProductPlanResponse
  pResponseStatus_ =
    DescribeProvisionedProductPlanResponse'
      { _dppprrsResourceChanges =
          Nothing,
        _dppprrsNextPageToken = Nothing,
        _dppprrsProvisionedProductPlanDetails =
          Nothing,
        _dppprrsResponseStatus =
          pResponseStatus_
      }

-- | Information about the resource changes that will occur when the plan is executed.
dppprrsResourceChanges :: Lens' DescribeProvisionedProductPlanResponse [ResourceChange]
dppprrsResourceChanges = lens _dppprrsResourceChanges (\s a -> s {_dppprrsResourceChanges = a}) . _Default . _Coerce

-- | The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
dppprrsNextPageToken :: Lens' DescribeProvisionedProductPlanResponse (Maybe Text)
dppprrsNextPageToken = lens _dppprrsNextPageToken (\s a -> s {_dppprrsNextPageToken = a})

-- | Information about the plan.
dppprrsProvisionedProductPlanDetails :: Lens' DescribeProvisionedProductPlanResponse (Maybe ProvisionedProductPlanDetails)
dppprrsProvisionedProductPlanDetails = lens _dppprrsProvisionedProductPlanDetails (\s a -> s {_dppprrsProvisionedProductPlanDetails = a})

-- | -- | The response status code.
dppprrsResponseStatus :: Lens' DescribeProvisionedProductPlanResponse Int
dppprrsResponseStatus = lens _dppprrsResponseStatus (\s a -> s {_dppprrsResponseStatus = a})

instance
  NFData
    DescribeProvisionedProductPlanResponse
