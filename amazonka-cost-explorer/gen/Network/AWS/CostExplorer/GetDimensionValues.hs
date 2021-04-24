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
-- Module      : Network.AWS.CostExplorer.GetDimensionValues
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves all available filter values for a specified filter over a period of time. You can search the dimension values for an arbitrary string.
module Network.AWS.CostExplorer.GetDimensionValues
  ( -- * Creating a Request
    getDimensionValues,
    GetDimensionValues,

    -- * Request Lenses
    gdvMaxResults,
    gdvSearchString,
    gdvNextPageToken,
    gdvContext,
    gdvSortBy,
    gdvFilter,
    gdvTimePeriod,
    gdvDimension,

    -- * Destructuring the Response
    getDimensionValuesResponse,
    GetDimensionValuesResponse,

    -- * Response Lenses
    gdvrrsNextPageToken,
    gdvrrsResponseStatus,
    gdvrrsDimensionValues,
    gdvrrsReturnSize,
    gdvrrsTotalSize,
  )
where

import Network.AWS.CostExplorer.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getDimensionValues' smart constructor.
data GetDimensionValues = GetDimensionValues'
  { _gdvMaxResults ::
      !(Maybe Nat),
    _gdvSearchString :: !(Maybe Text),
    _gdvNextPageToken ::
      !(Maybe Text),
    _gdvContext :: !(Maybe Context),
    _gdvSortBy ::
      !(Maybe [SortDefinition]),
    _gdvFilter :: !(Maybe Expression),
    _gdvTimePeriod :: !DateInterval,
    _gdvDimension :: !Dimension
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDimensionValues' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdvMaxResults' - This field is only used when SortBy is provided in the request. The maximum number of objects that to be returned for this request. If MaxResults is not specified with SortBy, the request will return 1000 results as the default value for this parameter. For @GetDimensionValues@ , MaxResults has an upper limit of 1000.
--
-- * 'gdvSearchString' - The value that you want to search the filter values for.
--
-- * 'gdvNextPageToken' - The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.
--
-- * 'gdvContext' - The context for the call to @GetDimensionValues@ . This can be @RESERVATIONS@ or @COST_AND_USAGE@ . The default value is @COST_AND_USAGE@ . If the context is set to @RESERVATIONS@ , the resulting dimension values can be used in the @GetReservationUtilization@ operation. If the context is set to @COST_AND_USAGE@ , the resulting dimension values can be used in the @GetCostAndUsage@ operation. If you set the context to @COST_AND_USAGE@ , you can use the following dimensions for searching:     * AZ - The Availability Zone. An example is @us-east-1a@ .     * DATABASE_ENGINE - The Amazon Relational Database Service database. Examples are Aurora or MySQL.     * INSTANCE_TYPE - The type of Amazon EC2 instance. An example is @m4.xlarge@ .     * LEGAL_ENTITY_NAME - The name of the organization that sells you AWS services, such as Amazon Web Services.     * LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value field contains the AWS ID of the member account.     * OPERATING_SYSTEM - The operating system. Examples are Windows or Linux.     * OPERATION - The action performed. Examples include @RunInstance@ and @CreateBucket@ .     * PLATFORM - The Amazon EC2 operating system. Examples are Windows or Linux.     * PURCHASE_TYPE - The reservation type of the purchase to which this usage is related. Examples include On-Demand Instances and Standard Reserved Instances.     * SERVICE - The AWS service such as Amazon DynamoDB.     * USAGE_TYPE - The type of usage. An example is DataTransfer-In-Bytes. The response for the @GetDimensionValues@ operation includes a unit attribute. Examples include GB and Hrs.     * USAGE_TYPE_GROUP - The grouping of common usage types. An example is Amazon EC2: CloudWatch – Alarms. The response for this operation includes a unit attribute.     * REGION - The AWS Region.     * RECORD_TYPE - The different types of charges such as RI fees, usage costs, tax refunds, and credits.     * RESOURCE_ID - The unique identifier of the resource. ResourceId is an opt-in feature only available for last 14 days for EC2-Compute Service. If you set the context to @RESERVATIONS@ , you can use the following dimensions for searching:     * AZ - The Availability Zone. An example is @us-east-1a@ .     * CACHE_ENGINE - The Amazon ElastiCache operating system. Examples are Windows or Linux.     * DEPLOYMENT_OPTION - The scope of Amazon Relational Database Service deployments. Valid values are @SingleAZ@ and @MultiAZ@ .     * INSTANCE_TYPE - The type of Amazon EC2 instance. An example is @m4.xlarge@ .     * LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value field contains the AWS ID of the member account.     * PLATFORM - The Amazon EC2 operating system. Examples are Windows or Linux.     * REGION - The AWS Region.     * SCOPE (Utilization only) - The scope of a Reserved Instance (RI). Values are regional or a single Availability Zone.     * TAG (Coverage only) - The tags that are associated with a Reserved Instance (RI).     * TENANCY - The tenancy of a resource. Examples are shared or dedicated. If you set the context to @SAVINGS_PLANS@ , you can use the following dimensions for searching:     * SAVINGS_PLANS_TYPE - Type of Savings Plans (EC2 Instance or Compute)     * PAYMENT_OPTION - Payment option for the given Savings Plans (for example, All Upfront)     * REGION - The AWS Region.     * INSTANCE_TYPE_FAMILY - The family of instances (For example, @m5@ )     * LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value field contains the AWS ID of the member account.     * SAVINGS_PLAN_ARN - The unique identifier for your Savings Plan
--
-- * 'gdvSortBy' - The value by which you want to sort the data. The key represents cost and usage metrics. The following values are supported:     * @BlendedCost@      * @UnblendedCost@      * @AmortizedCost@      * @NetAmortizedCost@      * @NetUnblendedCost@      * @UsageQuantity@      * @NormalizedUsageAmount@  Supported values for @SortOrder@ are @ASCENDING@ or @DESCENDING@ . When you specify a @SortBy@ paramater, the context must be @COST_AND_USAGE@ . Further, when using @SortBy@ , @NextPageToken@ and @SearchString@ are not supported.
--
-- * 'gdvFilter' - Undocumented member.
--
-- * 'gdvTimePeriod' - The start and end dates for retrieving the dimension values. The start date is inclusive, but the end date is exclusive. For example, if @start@ is @2017-01-01@ and @end@ is @2017-05-01@ , then the cost and usage data is retrieved from @2017-01-01@ up to and including @2017-04-30@ but not including @2017-05-01@ .
--
-- * 'gdvDimension' - The name of the dimension. Each @Dimension@ is available for a different @Context@ . For more information, see @Context@ .
getDimensionValues ::
  -- | 'gdvTimePeriod'
  DateInterval ->
  -- | 'gdvDimension'
  Dimension ->
  GetDimensionValues
getDimensionValues pTimePeriod_ pDimension_ =
  GetDimensionValues'
    { _gdvMaxResults = Nothing,
      _gdvSearchString = Nothing,
      _gdvNextPageToken = Nothing,
      _gdvContext = Nothing,
      _gdvSortBy = Nothing,
      _gdvFilter = Nothing,
      _gdvTimePeriod = pTimePeriod_,
      _gdvDimension = pDimension_
    }

-- | This field is only used when SortBy is provided in the request. The maximum number of objects that to be returned for this request. If MaxResults is not specified with SortBy, the request will return 1000 results as the default value for this parameter. For @GetDimensionValues@ , MaxResults has an upper limit of 1000.
gdvMaxResults :: Lens' GetDimensionValues (Maybe Natural)
gdvMaxResults = lens _gdvMaxResults (\s a -> s {_gdvMaxResults = a}) . mapping _Nat

-- | The value that you want to search the filter values for.
gdvSearchString :: Lens' GetDimensionValues (Maybe Text)
gdvSearchString = lens _gdvSearchString (\s a -> s {_gdvSearchString = a})

-- | The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.
gdvNextPageToken :: Lens' GetDimensionValues (Maybe Text)
gdvNextPageToken = lens _gdvNextPageToken (\s a -> s {_gdvNextPageToken = a})

-- | The context for the call to @GetDimensionValues@ . This can be @RESERVATIONS@ or @COST_AND_USAGE@ . The default value is @COST_AND_USAGE@ . If the context is set to @RESERVATIONS@ , the resulting dimension values can be used in the @GetReservationUtilization@ operation. If the context is set to @COST_AND_USAGE@ , the resulting dimension values can be used in the @GetCostAndUsage@ operation. If you set the context to @COST_AND_USAGE@ , you can use the following dimensions for searching:     * AZ - The Availability Zone. An example is @us-east-1a@ .     * DATABASE_ENGINE - The Amazon Relational Database Service database. Examples are Aurora or MySQL.     * INSTANCE_TYPE - The type of Amazon EC2 instance. An example is @m4.xlarge@ .     * LEGAL_ENTITY_NAME - The name of the organization that sells you AWS services, such as Amazon Web Services.     * LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value field contains the AWS ID of the member account.     * OPERATING_SYSTEM - The operating system. Examples are Windows or Linux.     * OPERATION - The action performed. Examples include @RunInstance@ and @CreateBucket@ .     * PLATFORM - The Amazon EC2 operating system. Examples are Windows or Linux.     * PURCHASE_TYPE - The reservation type of the purchase to which this usage is related. Examples include On-Demand Instances and Standard Reserved Instances.     * SERVICE - The AWS service such as Amazon DynamoDB.     * USAGE_TYPE - The type of usage. An example is DataTransfer-In-Bytes. The response for the @GetDimensionValues@ operation includes a unit attribute. Examples include GB and Hrs.     * USAGE_TYPE_GROUP - The grouping of common usage types. An example is Amazon EC2: CloudWatch – Alarms. The response for this operation includes a unit attribute.     * REGION - The AWS Region.     * RECORD_TYPE - The different types of charges such as RI fees, usage costs, tax refunds, and credits.     * RESOURCE_ID - The unique identifier of the resource. ResourceId is an opt-in feature only available for last 14 days for EC2-Compute Service. If you set the context to @RESERVATIONS@ , you can use the following dimensions for searching:     * AZ - The Availability Zone. An example is @us-east-1a@ .     * CACHE_ENGINE - The Amazon ElastiCache operating system. Examples are Windows or Linux.     * DEPLOYMENT_OPTION - The scope of Amazon Relational Database Service deployments. Valid values are @SingleAZ@ and @MultiAZ@ .     * INSTANCE_TYPE - The type of Amazon EC2 instance. An example is @m4.xlarge@ .     * LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value field contains the AWS ID of the member account.     * PLATFORM - The Amazon EC2 operating system. Examples are Windows or Linux.     * REGION - The AWS Region.     * SCOPE (Utilization only) - The scope of a Reserved Instance (RI). Values are regional or a single Availability Zone.     * TAG (Coverage only) - The tags that are associated with a Reserved Instance (RI).     * TENANCY - The tenancy of a resource. Examples are shared or dedicated. If you set the context to @SAVINGS_PLANS@ , you can use the following dimensions for searching:     * SAVINGS_PLANS_TYPE - Type of Savings Plans (EC2 Instance or Compute)     * PAYMENT_OPTION - Payment option for the given Savings Plans (for example, All Upfront)     * REGION - The AWS Region.     * INSTANCE_TYPE_FAMILY - The family of instances (For example, @m5@ )     * LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value field contains the AWS ID of the member account.     * SAVINGS_PLAN_ARN - The unique identifier for your Savings Plan
gdvContext :: Lens' GetDimensionValues (Maybe Context)
gdvContext = lens _gdvContext (\s a -> s {_gdvContext = a})

-- | The value by which you want to sort the data. The key represents cost and usage metrics. The following values are supported:     * @BlendedCost@      * @UnblendedCost@      * @AmortizedCost@      * @NetAmortizedCost@      * @NetUnblendedCost@      * @UsageQuantity@      * @NormalizedUsageAmount@  Supported values for @SortOrder@ are @ASCENDING@ or @DESCENDING@ . When you specify a @SortBy@ paramater, the context must be @COST_AND_USAGE@ . Further, when using @SortBy@ , @NextPageToken@ and @SearchString@ are not supported.
gdvSortBy :: Lens' GetDimensionValues [SortDefinition]
gdvSortBy = lens _gdvSortBy (\s a -> s {_gdvSortBy = a}) . _Default . _Coerce

-- | Undocumented member.
gdvFilter :: Lens' GetDimensionValues (Maybe Expression)
gdvFilter = lens _gdvFilter (\s a -> s {_gdvFilter = a})

-- | The start and end dates for retrieving the dimension values. The start date is inclusive, but the end date is exclusive. For example, if @start@ is @2017-01-01@ and @end@ is @2017-05-01@ , then the cost and usage data is retrieved from @2017-01-01@ up to and including @2017-04-30@ but not including @2017-05-01@ .
gdvTimePeriod :: Lens' GetDimensionValues DateInterval
gdvTimePeriod = lens _gdvTimePeriod (\s a -> s {_gdvTimePeriod = a})

-- | The name of the dimension. Each @Dimension@ is available for a different @Context@ . For more information, see @Context@ .
gdvDimension :: Lens' GetDimensionValues Dimension
gdvDimension = lens _gdvDimension (\s a -> s {_gdvDimension = a})

instance AWSRequest GetDimensionValues where
  type
    Rs GetDimensionValues =
      GetDimensionValuesResponse
  request = postJSON costExplorer
  response =
    receiveJSON
      ( \s h x ->
          GetDimensionValuesResponse'
            <$> (x .?> "NextPageToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "DimensionValues" .!@ mempty)
            <*> (x .:> "ReturnSize")
            <*> (x .:> "TotalSize")
      )

instance Hashable GetDimensionValues

instance NFData GetDimensionValues

instance ToHeaders GetDimensionValues where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSInsightsIndexService.GetDimensionValues" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetDimensionValues where
  toJSON GetDimensionValues' {..} =
    object
      ( catMaybes
          [ ("MaxResults" .=) <$> _gdvMaxResults,
            ("SearchString" .=) <$> _gdvSearchString,
            ("NextPageToken" .=) <$> _gdvNextPageToken,
            ("Context" .=) <$> _gdvContext,
            ("SortBy" .=) <$> _gdvSortBy,
            ("Filter" .=) <$> _gdvFilter,
            Just ("TimePeriod" .= _gdvTimePeriod),
            Just ("Dimension" .= _gdvDimension)
          ]
      )

instance ToPath GetDimensionValues where
  toPath = const "/"

instance ToQuery GetDimensionValues where
  toQuery = const mempty

-- | /See:/ 'getDimensionValuesResponse' smart constructor.
data GetDimensionValuesResponse = GetDimensionValuesResponse'
  { _gdvrrsNextPageToken ::
      !(Maybe Text),
    _gdvrrsResponseStatus ::
      !Int,
    _gdvrrsDimensionValues ::
      ![DimensionValuesWithAttributes],
    _gdvrrsReturnSize ::
      !Int,
    _gdvrrsTotalSize ::
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

-- | Creates a value of 'GetDimensionValuesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdvrrsNextPageToken' - The token for the next set of retrievable results. AWS provides the token when the response from a previous call has more results than the maximum page size.
--
-- * 'gdvrrsResponseStatus' - -- | The response status code.
--
-- * 'gdvrrsDimensionValues' - The filters that you used to filter your request. Some dimensions are available only for a specific context. If you set the context to @COST_AND_USAGE@ , you can use the following dimensions for searching:     * AZ - The Availability Zone. An example is @us-east-1a@ .     * DATABASE_ENGINE - The Amazon Relational Database Service database. Examples are Aurora or MySQL.     * INSTANCE_TYPE - The type of Amazon EC2 instance. An example is @m4.xlarge@ .     * LEGAL_ENTITY_NAME - The name of the organization that sells you AWS services, such as Amazon Web Services.     * LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value field contains the AWS ID of the member account.     * OPERATING_SYSTEM - The operating system. Examples are Windows or Linux.     * OPERATION - The action performed. Examples include @RunInstance@ and @CreateBucket@ .     * PLATFORM - The Amazon EC2 operating system. Examples are Windows or Linux.     * PURCHASE_TYPE - The reservation type of the purchase to which this usage is related. Examples include On-Demand Instances and Standard Reserved Instances.     * SERVICE - The AWS service such as Amazon DynamoDB.     * USAGE_TYPE - The type of usage. An example is DataTransfer-In-Bytes. The response for the @GetDimensionValues@ operation includes a unit attribute. Examples include GB and Hrs.     * USAGE_TYPE_GROUP - The grouping of common usage types. An example is Amazon EC2: CloudWatch – Alarms. The response for this operation includes a unit attribute.     * RECORD_TYPE - The different types of charges such as RI fees, usage costs, tax refunds, and credits.     * RESOURCE_ID - The unique identifier of the resource. ResourceId is an opt-in feature only available for last 14 days for EC2-Compute Service. If you set the context to @RESERVATIONS@ , you can use the following dimensions for searching:     * AZ - The Availability Zone. An example is @us-east-1a@ .     * CACHE_ENGINE - The Amazon ElastiCache operating system. Examples are Windows or Linux.     * DEPLOYMENT_OPTION - The scope of Amazon Relational Database Service deployments. Valid values are @SingleAZ@ and @MultiAZ@ .     * INSTANCE_TYPE - The type of Amazon EC2 instance. An example is @m4.xlarge@ .     * LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value field contains the AWS ID of the member account.     * PLATFORM - The Amazon EC2 operating system. Examples are Windows or Linux.     * REGION - The AWS Region.     * SCOPE (Utilization only) - The scope of a Reserved Instance (RI). Values are regional or a single Availability Zone.     * TAG (Coverage only) - The tags that are associated with a Reserved Instance (RI).     * TENANCY - The tenancy of a resource. Examples are shared or dedicated. If you set the context to @SAVINGS_PLANS@ , you can use the following dimensions for searching:     * SAVINGS_PLANS_TYPE - Type of Savings Plans (EC2 Instance or Compute)     * PAYMENT_OPTION - Payment option for the given Savings Plans (for example, All Upfront)     * REGION - The AWS Region.     * INSTANCE_TYPE_FAMILY - The family of instances (For example, @m5@ )     * LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value field contains the AWS ID of the member account.     * SAVINGS_PLAN_ARN - The unique identifier for your Savings Plan
--
-- * 'gdvrrsReturnSize' - The number of results that AWS returned at one time.
--
-- * 'gdvrrsTotalSize' - The total number of search results.
getDimensionValuesResponse ::
  -- | 'gdvrrsResponseStatus'
  Int ->
  -- | 'gdvrrsReturnSize'
  Int ->
  -- | 'gdvrrsTotalSize'
  Int ->
  GetDimensionValuesResponse
getDimensionValuesResponse
  pResponseStatus_
  pReturnSize_
  pTotalSize_ =
    GetDimensionValuesResponse'
      { _gdvrrsNextPageToken =
          Nothing,
        _gdvrrsResponseStatus = pResponseStatus_,
        _gdvrrsDimensionValues = mempty,
        _gdvrrsReturnSize = pReturnSize_,
        _gdvrrsTotalSize = pTotalSize_
      }

-- | The token for the next set of retrievable results. AWS provides the token when the response from a previous call has more results than the maximum page size.
gdvrrsNextPageToken :: Lens' GetDimensionValuesResponse (Maybe Text)
gdvrrsNextPageToken = lens _gdvrrsNextPageToken (\s a -> s {_gdvrrsNextPageToken = a})

-- | -- | The response status code.
gdvrrsResponseStatus :: Lens' GetDimensionValuesResponse Int
gdvrrsResponseStatus = lens _gdvrrsResponseStatus (\s a -> s {_gdvrrsResponseStatus = a})

-- | The filters that you used to filter your request. Some dimensions are available only for a specific context. If you set the context to @COST_AND_USAGE@ , you can use the following dimensions for searching:     * AZ - The Availability Zone. An example is @us-east-1a@ .     * DATABASE_ENGINE - The Amazon Relational Database Service database. Examples are Aurora or MySQL.     * INSTANCE_TYPE - The type of Amazon EC2 instance. An example is @m4.xlarge@ .     * LEGAL_ENTITY_NAME - The name of the organization that sells you AWS services, such as Amazon Web Services.     * LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value field contains the AWS ID of the member account.     * OPERATING_SYSTEM - The operating system. Examples are Windows or Linux.     * OPERATION - The action performed. Examples include @RunInstance@ and @CreateBucket@ .     * PLATFORM - The Amazon EC2 operating system. Examples are Windows or Linux.     * PURCHASE_TYPE - The reservation type of the purchase to which this usage is related. Examples include On-Demand Instances and Standard Reserved Instances.     * SERVICE - The AWS service such as Amazon DynamoDB.     * USAGE_TYPE - The type of usage. An example is DataTransfer-In-Bytes. The response for the @GetDimensionValues@ operation includes a unit attribute. Examples include GB and Hrs.     * USAGE_TYPE_GROUP - The grouping of common usage types. An example is Amazon EC2: CloudWatch – Alarms. The response for this operation includes a unit attribute.     * RECORD_TYPE - The different types of charges such as RI fees, usage costs, tax refunds, and credits.     * RESOURCE_ID - The unique identifier of the resource. ResourceId is an opt-in feature only available for last 14 days for EC2-Compute Service. If you set the context to @RESERVATIONS@ , you can use the following dimensions for searching:     * AZ - The Availability Zone. An example is @us-east-1a@ .     * CACHE_ENGINE - The Amazon ElastiCache operating system. Examples are Windows or Linux.     * DEPLOYMENT_OPTION - The scope of Amazon Relational Database Service deployments. Valid values are @SingleAZ@ and @MultiAZ@ .     * INSTANCE_TYPE - The type of Amazon EC2 instance. An example is @m4.xlarge@ .     * LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value field contains the AWS ID of the member account.     * PLATFORM - The Amazon EC2 operating system. Examples are Windows or Linux.     * REGION - The AWS Region.     * SCOPE (Utilization only) - The scope of a Reserved Instance (RI). Values are regional or a single Availability Zone.     * TAG (Coverage only) - The tags that are associated with a Reserved Instance (RI).     * TENANCY - The tenancy of a resource. Examples are shared or dedicated. If you set the context to @SAVINGS_PLANS@ , you can use the following dimensions for searching:     * SAVINGS_PLANS_TYPE - Type of Savings Plans (EC2 Instance or Compute)     * PAYMENT_OPTION - Payment option for the given Savings Plans (for example, All Upfront)     * REGION - The AWS Region.     * INSTANCE_TYPE_FAMILY - The family of instances (For example, @m5@ )     * LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value field contains the AWS ID of the member account.     * SAVINGS_PLAN_ARN - The unique identifier for your Savings Plan
gdvrrsDimensionValues :: Lens' GetDimensionValuesResponse [DimensionValuesWithAttributes]
gdvrrsDimensionValues = lens _gdvrrsDimensionValues (\s a -> s {_gdvrrsDimensionValues = a}) . _Coerce

-- | The number of results that AWS returned at one time.
gdvrrsReturnSize :: Lens' GetDimensionValuesResponse Int
gdvrrsReturnSize = lens _gdvrrsReturnSize (\s a -> s {_gdvrrsReturnSize = a})

-- | The total number of search results.
gdvrrsTotalSize :: Lens' GetDimensionValuesResponse Int
gdvrrsTotalSize = lens _gdvrrsTotalSize (\s a -> s {_gdvrrsTotalSize = a})

instance NFData GetDimensionValuesResponse
