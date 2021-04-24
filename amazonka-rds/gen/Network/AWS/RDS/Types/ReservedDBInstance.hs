{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.ReservedDBInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.ReservedDBInstance where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types.RecurringCharge

-- | This data type is used as a response element in the @DescribeReservedDBInstances@ and @PurchaseReservedDBInstancesOffering@ actions.
--
--
--
-- /See:/ 'reservedDBInstance' smart constructor.
data ReservedDBInstance = ReservedDBInstance'
  { _rdiDuration ::
      !(Maybe Int),
    _rdiReservedDBInstanceARN ::
      !(Maybe Text),
    _rdiStartTime :: !(Maybe ISO8601),
    _rdiCurrencyCode :: !(Maybe Text),
    _rdiMultiAZ :: !(Maybe Bool),
    _rdiState :: !(Maybe Text),
    _rdiDBInstanceCount ::
      !(Maybe Int),
    _rdiDBInstanceClass ::
      !(Maybe Text),
    _rdiReservedDBInstanceId ::
      !(Maybe Text),
    _rdiFixedPrice :: !(Maybe Double),
    _rdiLeaseId :: !(Maybe Text),
    _rdiUsagePrice :: !(Maybe Double),
    _rdiOfferingType :: !(Maybe Text),
    _rdiRecurringCharges ::
      !(Maybe [RecurringCharge]),
    _rdiProductDescription ::
      !(Maybe Text),
    _rdiReservedDBInstancesOfferingId ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReservedDBInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdiDuration' - The duration of the reservation in seconds.
--
-- * 'rdiReservedDBInstanceARN' - The Amazon Resource Name (ARN) for the reserved DB instance.
--
-- * 'rdiStartTime' - The time the reservation started.
--
-- * 'rdiCurrencyCode' - The currency code for the reserved DB instance.
--
-- * 'rdiMultiAZ' - Indicates if the reservation applies to Multi-AZ deployments.
--
-- * 'rdiState' - The state of the reserved DB instance.
--
-- * 'rdiDBInstanceCount' - The number of reserved DB instances.
--
-- * 'rdiDBInstanceClass' - The DB instance class for the reserved DB instance.
--
-- * 'rdiReservedDBInstanceId' - The unique identifier for the reservation.
--
-- * 'rdiFixedPrice' - The fixed price charged for this reserved DB instance.
--
-- * 'rdiLeaseId' - The unique identifier for the lease associated with the reserved DB instance.
--
-- * 'rdiUsagePrice' - The hourly price charged for this reserved DB instance.
--
-- * 'rdiOfferingType' - The offering type of this reserved DB instance.
--
-- * 'rdiRecurringCharges' - The recurring price charged to run this reserved DB instance.
--
-- * 'rdiProductDescription' - The description of the reserved DB instance.
--
-- * 'rdiReservedDBInstancesOfferingId' - The offering identifier.
reservedDBInstance ::
  ReservedDBInstance
reservedDBInstance =
  ReservedDBInstance'
    { _rdiDuration = Nothing,
      _rdiReservedDBInstanceARN = Nothing,
      _rdiStartTime = Nothing,
      _rdiCurrencyCode = Nothing,
      _rdiMultiAZ = Nothing,
      _rdiState = Nothing,
      _rdiDBInstanceCount = Nothing,
      _rdiDBInstanceClass = Nothing,
      _rdiReservedDBInstanceId = Nothing,
      _rdiFixedPrice = Nothing,
      _rdiLeaseId = Nothing,
      _rdiUsagePrice = Nothing,
      _rdiOfferingType = Nothing,
      _rdiRecurringCharges = Nothing,
      _rdiProductDescription = Nothing,
      _rdiReservedDBInstancesOfferingId = Nothing
    }

-- | The duration of the reservation in seconds.
rdiDuration :: Lens' ReservedDBInstance (Maybe Int)
rdiDuration = lens _rdiDuration (\s a -> s {_rdiDuration = a})

-- | The Amazon Resource Name (ARN) for the reserved DB instance.
rdiReservedDBInstanceARN :: Lens' ReservedDBInstance (Maybe Text)
rdiReservedDBInstanceARN = lens _rdiReservedDBInstanceARN (\s a -> s {_rdiReservedDBInstanceARN = a})

-- | The time the reservation started.
rdiStartTime :: Lens' ReservedDBInstance (Maybe UTCTime)
rdiStartTime = lens _rdiStartTime (\s a -> s {_rdiStartTime = a}) . mapping _Time

-- | The currency code for the reserved DB instance.
rdiCurrencyCode :: Lens' ReservedDBInstance (Maybe Text)
rdiCurrencyCode = lens _rdiCurrencyCode (\s a -> s {_rdiCurrencyCode = a})

-- | Indicates if the reservation applies to Multi-AZ deployments.
rdiMultiAZ :: Lens' ReservedDBInstance (Maybe Bool)
rdiMultiAZ = lens _rdiMultiAZ (\s a -> s {_rdiMultiAZ = a})

-- | The state of the reserved DB instance.
rdiState :: Lens' ReservedDBInstance (Maybe Text)
rdiState = lens _rdiState (\s a -> s {_rdiState = a})

-- | The number of reserved DB instances.
rdiDBInstanceCount :: Lens' ReservedDBInstance (Maybe Int)
rdiDBInstanceCount = lens _rdiDBInstanceCount (\s a -> s {_rdiDBInstanceCount = a})

-- | The DB instance class for the reserved DB instance.
rdiDBInstanceClass :: Lens' ReservedDBInstance (Maybe Text)
rdiDBInstanceClass = lens _rdiDBInstanceClass (\s a -> s {_rdiDBInstanceClass = a})

-- | The unique identifier for the reservation.
rdiReservedDBInstanceId :: Lens' ReservedDBInstance (Maybe Text)
rdiReservedDBInstanceId = lens _rdiReservedDBInstanceId (\s a -> s {_rdiReservedDBInstanceId = a})

-- | The fixed price charged for this reserved DB instance.
rdiFixedPrice :: Lens' ReservedDBInstance (Maybe Double)
rdiFixedPrice = lens _rdiFixedPrice (\s a -> s {_rdiFixedPrice = a})

-- | The unique identifier for the lease associated with the reserved DB instance.
rdiLeaseId :: Lens' ReservedDBInstance (Maybe Text)
rdiLeaseId = lens _rdiLeaseId (\s a -> s {_rdiLeaseId = a})

-- | The hourly price charged for this reserved DB instance.
rdiUsagePrice :: Lens' ReservedDBInstance (Maybe Double)
rdiUsagePrice = lens _rdiUsagePrice (\s a -> s {_rdiUsagePrice = a})

-- | The offering type of this reserved DB instance.
rdiOfferingType :: Lens' ReservedDBInstance (Maybe Text)
rdiOfferingType = lens _rdiOfferingType (\s a -> s {_rdiOfferingType = a})

-- | The recurring price charged to run this reserved DB instance.
rdiRecurringCharges :: Lens' ReservedDBInstance [RecurringCharge]
rdiRecurringCharges = lens _rdiRecurringCharges (\s a -> s {_rdiRecurringCharges = a}) . _Default . _Coerce

-- | The description of the reserved DB instance.
rdiProductDescription :: Lens' ReservedDBInstance (Maybe Text)
rdiProductDescription = lens _rdiProductDescription (\s a -> s {_rdiProductDescription = a})

-- | The offering identifier.
rdiReservedDBInstancesOfferingId :: Lens' ReservedDBInstance (Maybe Text)
rdiReservedDBInstancesOfferingId = lens _rdiReservedDBInstancesOfferingId (\s a -> s {_rdiReservedDBInstancesOfferingId = a})

instance FromXML ReservedDBInstance where
  parseXML x =
    ReservedDBInstance'
      <$> (x .@? "Duration")
      <*> (x .@? "ReservedDBInstanceArn")
      <*> (x .@? "StartTime")
      <*> (x .@? "CurrencyCode")
      <*> (x .@? "MultiAZ")
      <*> (x .@? "State")
      <*> (x .@? "DBInstanceCount")
      <*> (x .@? "DBInstanceClass")
      <*> (x .@? "ReservedDBInstanceId")
      <*> (x .@? "FixedPrice")
      <*> (x .@? "LeaseId")
      <*> (x .@? "UsagePrice")
      <*> (x .@? "OfferingType")
      <*> ( x .@? "RecurringCharges" .!@ mempty
              >>= may (parseXMLList "RecurringCharge")
          )
      <*> (x .@? "ProductDescription")
      <*> (x .@? "ReservedDBInstancesOfferingId")

instance Hashable ReservedDBInstance

instance NFData ReservedDBInstance
