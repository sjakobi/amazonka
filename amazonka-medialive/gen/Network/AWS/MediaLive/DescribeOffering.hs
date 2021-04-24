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
-- Module      : Network.AWS.MediaLive.DescribeOffering
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get details for an offering.
module Network.AWS.MediaLive.DescribeOffering
  ( -- * Creating a Request
    describeOffering,
    DescribeOffering,

    -- * Request Lenses
    doOfferingId,

    -- * Destructuring the Response
    describeOfferingResponse,
    DescribeOfferingResponse,

    -- * Response Lenses
    dorrsDuration,
    dorrsDurationUnits,
    dorrsARN,
    dorrsOfferingId,
    dorrsCurrencyCode,
    dorrsResourceSpecification,
    dorrsOfferingDescription,
    dorrsFixedPrice,
    dorrsUsagePrice,
    dorrsOfferingType,
    dorrsRegion,
    dorrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Placeholder documentation for DescribeOfferingRequest
--
-- /See:/ 'describeOffering' smart constructor.
newtype DescribeOffering = DescribeOffering'
  { _doOfferingId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeOffering' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'doOfferingId' - Unique offering ID, e.g. '87654321'
describeOffering ::
  -- | 'doOfferingId'
  Text ->
  DescribeOffering
describeOffering pOfferingId_ =
  DescribeOffering' {_doOfferingId = pOfferingId_}

-- | Unique offering ID, e.g. '87654321'
doOfferingId :: Lens' DescribeOffering Text
doOfferingId = lens _doOfferingId (\s a -> s {_doOfferingId = a})

instance AWSRequest DescribeOffering where
  type Rs DescribeOffering = DescribeOfferingResponse
  request = get mediaLive
  response =
    receiveJSON
      ( \s h x ->
          DescribeOfferingResponse'
            <$> (x .?> "duration")
            <*> (x .?> "durationUnits")
            <*> (x .?> "arn")
            <*> (x .?> "offeringId")
            <*> (x .?> "currencyCode")
            <*> (x .?> "resourceSpecification")
            <*> (x .?> "offeringDescription")
            <*> (x .?> "fixedPrice")
            <*> (x .?> "usagePrice")
            <*> (x .?> "offeringType")
            <*> (x .?> "region")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeOffering

instance NFData DescribeOffering

instance ToHeaders DescribeOffering where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DescribeOffering where
  toPath DescribeOffering' {..} =
    mconcat ["/prod/offerings/", toBS _doOfferingId]

instance ToQuery DescribeOffering where
  toQuery = const mempty

-- | Placeholder documentation for DescribeOfferingResponse
--
-- /See:/ 'describeOfferingResponse' smart constructor.
data DescribeOfferingResponse = DescribeOfferingResponse'
  { _dorrsDuration ::
      !(Maybe Int),
    _dorrsDurationUnits ::
      !( Maybe
           OfferingDurationUnits
       ),
    _dorrsARN ::
      !(Maybe Text),
    _dorrsOfferingId ::
      !(Maybe Text),
    _dorrsCurrencyCode ::
      !(Maybe Text),
    _dorrsResourceSpecification ::
      !( Maybe
           ReservationResourceSpecification
       ),
    _dorrsOfferingDescription ::
      !(Maybe Text),
    _dorrsFixedPrice ::
      !(Maybe Double),
    _dorrsUsagePrice ::
      !(Maybe Double),
    _dorrsOfferingType ::
      !(Maybe OfferingType),
    _dorrsRegion ::
      !(Maybe Text),
    _dorrsResponseStatus ::
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

-- | Creates a value of 'DescribeOfferingResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dorrsDuration' - Lease duration, e.g. '12'
--
-- * 'dorrsDurationUnits' - Units for duration, e.g. 'MONTHS'
--
-- * 'dorrsARN' - Unique offering ARN, e.g. 'arn:aws:medialive:us-west-2:123456789012:offering:87654321'
--
-- * 'dorrsOfferingId' - Unique offering ID, e.g. '87654321'
--
-- * 'dorrsCurrencyCode' - Currency code for usagePrice and fixedPrice in ISO-4217 format, e.g. 'USD'
--
-- * 'dorrsResourceSpecification' - Resource configuration details
--
-- * 'dorrsOfferingDescription' - Offering description, e.g. 'HD AVC output at 10-20 Mbps, 30 fps, and standard VQ in US West (Oregon)'
--
-- * 'dorrsFixedPrice' - One-time charge for each reserved resource, e.g. '0.0' for a NO_UPFRONT offering
--
-- * 'dorrsUsagePrice' - Recurring usage charge for each reserved resource, e.g. '157.0'
--
-- * 'dorrsOfferingType' - Offering type, e.g. 'NO_UPFRONT'
--
-- * 'dorrsRegion' - AWS region, e.g. 'us-west-2'
--
-- * 'dorrsResponseStatus' - -- | The response status code.
describeOfferingResponse ::
  -- | 'dorrsResponseStatus'
  Int ->
  DescribeOfferingResponse
describeOfferingResponse pResponseStatus_ =
  DescribeOfferingResponse'
    { _dorrsDuration = Nothing,
      _dorrsDurationUnits = Nothing,
      _dorrsARN = Nothing,
      _dorrsOfferingId = Nothing,
      _dorrsCurrencyCode = Nothing,
      _dorrsResourceSpecification = Nothing,
      _dorrsOfferingDescription = Nothing,
      _dorrsFixedPrice = Nothing,
      _dorrsUsagePrice = Nothing,
      _dorrsOfferingType = Nothing,
      _dorrsRegion = Nothing,
      _dorrsResponseStatus = pResponseStatus_
    }

-- | Lease duration, e.g. '12'
dorrsDuration :: Lens' DescribeOfferingResponse (Maybe Int)
dorrsDuration = lens _dorrsDuration (\s a -> s {_dorrsDuration = a})

-- | Units for duration, e.g. 'MONTHS'
dorrsDurationUnits :: Lens' DescribeOfferingResponse (Maybe OfferingDurationUnits)
dorrsDurationUnits = lens _dorrsDurationUnits (\s a -> s {_dorrsDurationUnits = a})

-- | Unique offering ARN, e.g. 'arn:aws:medialive:us-west-2:123456789012:offering:87654321'
dorrsARN :: Lens' DescribeOfferingResponse (Maybe Text)
dorrsARN = lens _dorrsARN (\s a -> s {_dorrsARN = a})

-- | Unique offering ID, e.g. '87654321'
dorrsOfferingId :: Lens' DescribeOfferingResponse (Maybe Text)
dorrsOfferingId = lens _dorrsOfferingId (\s a -> s {_dorrsOfferingId = a})

-- | Currency code for usagePrice and fixedPrice in ISO-4217 format, e.g. 'USD'
dorrsCurrencyCode :: Lens' DescribeOfferingResponse (Maybe Text)
dorrsCurrencyCode = lens _dorrsCurrencyCode (\s a -> s {_dorrsCurrencyCode = a})

-- | Resource configuration details
dorrsResourceSpecification :: Lens' DescribeOfferingResponse (Maybe ReservationResourceSpecification)
dorrsResourceSpecification = lens _dorrsResourceSpecification (\s a -> s {_dorrsResourceSpecification = a})

-- | Offering description, e.g. 'HD AVC output at 10-20 Mbps, 30 fps, and standard VQ in US West (Oregon)'
dorrsOfferingDescription :: Lens' DescribeOfferingResponse (Maybe Text)
dorrsOfferingDescription = lens _dorrsOfferingDescription (\s a -> s {_dorrsOfferingDescription = a})

-- | One-time charge for each reserved resource, e.g. '0.0' for a NO_UPFRONT offering
dorrsFixedPrice :: Lens' DescribeOfferingResponse (Maybe Double)
dorrsFixedPrice = lens _dorrsFixedPrice (\s a -> s {_dorrsFixedPrice = a})

-- | Recurring usage charge for each reserved resource, e.g. '157.0'
dorrsUsagePrice :: Lens' DescribeOfferingResponse (Maybe Double)
dorrsUsagePrice = lens _dorrsUsagePrice (\s a -> s {_dorrsUsagePrice = a})

-- | Offering type, e.g. 'NO_UPFRONT'
dorrsOfferingType :: Lens' DescribeOfferingResponse (Maybe OfferingType)
dorrsOfferingType = lens _dorrsOfferingType (\s a -> s {_dorrsOfferingType = a})

-- | AWS region, e.g. 'us-west-2'
dorrsRegion :: Lens' DescribeOfferingResponse (Maybe Text)
dorrsRegion = lens _dorrsRegion (\s a -> s {_dorrsRegion = a})

-- | -- | The response status code.
dorrsResponseStatus :: Lens' DescribeOfferingResponse Int
dorrsResponseStatus = lens _dorrsResponseStatus (\s a -> s {_dorrsResponseStatus = a})

instance NFData DescribeOfferingResponse
