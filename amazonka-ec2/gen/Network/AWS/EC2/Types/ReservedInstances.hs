{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ReservedInstances
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ReservedInstances where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.CurrencyCodeValues
import Network.AWS.EC2.Types.InstanceType
import Network.AWS.EC2.Types.OfferingClassType
import Network.AWS.EC2.Types.OfferingTypeValues
import Network.AWS.EC2.Types.RIProductDescription
import Network.AWS.EC2.Types.RecurringCharge
import Network.AWS.EC2.Types.ReservedInstanceState
import Network.AWS.EC2.Types.Scope
import Network.AWS.EC2.Types.Tag
import Network.AWS.EC2.Types.Tenancy
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a Reserved Instance.
--
--
--
-- /See:/ 'reservedInstances' smart constructor.
data ReservedInstances = ReservedInstances'
  { _riEnd ::
      !(Maybe ISO8601),
    _riInstanceType ::
      !(Maybe InstanceType),
    _riDuration :: !(Maybe Integer),
    _riReservedInstancesId ::
      !(Maybe Text),
    _riInstanceTenancy ::
      !(Maybe Tenancy),
    _riCurrencyCode ::
      !(Maybe CurrencyCodeValues),
    _riScope :: !(Maybe Scope),
    _riState ::
      !(Maybe ReservedInstanceState),
    _riAvailabilityZone ::
      !(Maybe Text),
    _riTags :: !(Maybe [Tag]),
    _riOfferingClass ::
      !(Maybe OfferingClassType),
    _riFixedPrice :: !(Maybe Double),
    _riUsagePrice :: !(Maybe Double),
    _riOfferingType ::
      !(Maybe OfferingTypeValues),
    _riStart :: !(Maybe ISO8601),
    _riRecurringCharges ::
      !(Maybe [RecurringCharge]),
    _riProductDescription ::
      !(Maybe RIProductDescription),
    _riInstanceCount :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReservedInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riEnd' - The time when the Reserved Instance expires.
--
-- * 'riInstanceType' - The instance type on which the Reserved Instance can be used.
--
-- * 'riDuration' - The duration of the Reserved Instance, in seconds.
--
-- * 'riReservedInstancesId' - The ID of the Reserved Instance.
--
-- * 'riInstanceTenancy' - The tenancy of the instance.
--
-- * 'riCurrencyCode' - The currency of the Reserved Instance. It's specified using ISO 4217 standard currency codes. At this time, the only supported currency is @USD@ .
--
-- * 'riScope' - The scope of the Reserved Instance.
--
-- * 'riState' - The state of the Reserved Instance purchase.
--
-- * 'riAvailabilityZone' - The Availability Zone in which the Reserved Instance can be used.
--
-- * 'riTags' - Any tags assigned to the resource.
--
-- * 'riOfferingClass' - The offering class of the Reserved Instance.
--
-- * 'riFixedPrice' - The purchase price of the Reserved Instance.
--
-- * 'riUsagePrice' - The usage price of the Reserved Instance, per hour.
--
-- * 'riOfferingType' - The Reserved Instance offering type.
--
-- * 'riStart' - The date and time the Reserved Instance started.
--
-- * 'riRecurringCharges' - The recurring charge tag assigned to the resource.
--
-- * 'riProductDescription' - The Reserved Instance product platform description.
--
-- * 'riInstanceCount' - The number of reservations purchased.
reservedInstances ::
  ReservedInstances
reservedInstances =
  ReservedInstances'
    { _riEnd = Nothing,
      _riInstanceType = Nothing,
      _riDuration = Nothing,
      _riReservedInstancesId = Nothing,
      _riInstanceTenancy = Nothing,
      _riCurrencyCode = Nothing,
      _riScope = Nothing,
      _riState = Nothing,
      _riAvailabilityZone = Nothing,
      _riTags = Nothing,
      _riOfferingClass = Nothing,
      _riFixedPrice = Nothing,
      _riUsagePrice = Nothing,
      _riOfferingType = Nothing,
      _riStart = Nothing,
      _riRecurringCharges = Nothing,
      _riProductDescription = Nothing,
      _riInstanceCount = Nothing
    }

-- | The time when the Reserved Instance expires.
riEnd :: Lens' ReservedInstances (Maybe UTCTime)
riEnd = lens _riEnd (\s a -> s {_riEnd = a}) . mapping _Time

-- | The instance type on which the Reserved Instance can be used.
riInstanceType :: Lens' ReservedInstances (Maybe InstanceType)
riInstanceType = lens _riInstanceType (\s a -> s {_riInstanceType = a})

-- | The duration of the Reserved Instance, in seconds.
riDuration :: Lens' ReservedInstances (Maybe Integer)
riDuration = lens _riDuration (\s a -> s {_riDuration = a})

-- | The ID of the Reserved Instance.
riReservedInstancesId :: Lens' ReservedInstances (Maybe Text)
riReservedInstancesId = lens _riReservedInstancesId (\s a -> s {_riReservedInstancesId = a})

-- | The tenancy of the instance.
riInstanceTenancy :: Lens' ReservedInstances (Maybe Tenancy)
riInstanceTenancy = lens _riInstanceTenancy (\s a -> s {_riInstanceTenancy = a})

-- | The currency of the Reserved Instance. It's specified using ISO 4217 standard currency codes. At this time, the only supported currency is @USD@ .
riCurrencyCode :: Lens' ReservedInstances (Maybe CurrencyCodeValues)
riCurrencyCode = lens _riCurrencyCode (\s a -> s {_riCurrencyCode = a})

-- | The scope of the Reserved Instance.
riScope :: Lens' ReservedInstances (Maybe Scope)
riScope = lens _riScope (\s a -> s {_riScope = a})

-- | The state of the Reserved Instance purchase.
riState :: Lens' ReservedInstances (Maybe ReservedInstanceState)
riState = lens _riState (\s a -> s {_riState = a})

-- | The Availability Zone in which the Reserved Instance can be used.
riAvailabilityZone :: Lens' ReservedInstances (Maybe Text)
riAvailabilityZone = lens _riAvailabilityZone (\s a -> s {_riAvailabilityZone = a})

-- | Any tags assigned to the resource.
riTags :: Lens' ReservedInstances [Tag]
riTags = lens _riTags (\s a -> s {_riTags = a}) . _Default . _Coerce

-- | The offering class of the Reserved Instance.
riOfferingClass :: Lens' ReservedInstances (Maybe OfferingClassType)
riOfferingClass = lens _riOfferingClass (\s a -> s {_riOfferingClass = a})

-- | The purchase price of the Reserved Instance.
riFixedPrice :: Lens' ReservedInstances (Maybe Double)
riFixedPrice = lens _riFixedPrice (\s a -> s {_riFixedPrice = a})

-- | The usage price of the Reserved Instance, per hour.
riUsagePrice :: Lens' ReservedInstances (Maybe Double)
riUsagePrice = lens _riUsagePrice (\s a -> s {_riUsagePrice = a})

-- | The Reserved Instance offering type.
riOfferingType :: Lens' ReservedInstances (Maybe OfferingTypeValues)
riOfferingType = lens _riOfferingType (\s a -> s {_riOfferingType = a})

-- | The date and time the Reserved Instance started.
riStart :: Lens' ReservedInstances (Maybe UTCTime)
riStart = lens _riStart (\s a -> s {_riStart = a}) . mapping _Time

-- | The recurring charge tag assigned to the resource.
riRecurringCharges :: Lens' ReservedInstances [RecurringCharge]
riRecurringCharges = lens _riRecurringCharges (\s a -> s {_riRecurringCharges = a}) . _Default . _Coerce

-- | The Reserved Instance product platform description.
riProductDescription :: Lens' ReservedInstances (Maybe RIProductDescription)
riProductDescription = lens _riProductDescription (\s a -> s {_riProductDescription = a})

-- | The number of reservations purchased.
riInstanceCount :: Lens' ReservedInstances (Maybe Int)
riInstanceCount = lens _riInstanceCount (\s a -> s {_riInstanceCount = a})

instance FromXML ReservedInstances where
  parseXML x =
    ReservedInstances'
      <$> (x .@? "end")
      <*> (x .@? "instanceType")
      <*> (x .@? "duration")
      <*> (x .@? "reservedInstancesId")
      <*> (x .@? "instanceTenancy")
      <*> (x .@? "currencyCode")
      <*> (x .@? "scope")
      <*> (x .@? "state")
      <*> (x .@? "availabilityZone")
      <*> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "offeringClass")
      <*> (x .@? "fixedPrice")
      <*> (x .@? "usagePrice")
      <*> (x .@? "offeringType")
      <*> (x .@? "start")
      <*> ( x .@? "recurringCharges" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "productDescription")
      <*> (x .@? "instanceCount")

instance Hashable ReservedInstances

instance NFData ReservedInstances
