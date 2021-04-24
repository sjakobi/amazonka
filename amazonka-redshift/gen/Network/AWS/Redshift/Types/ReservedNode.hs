{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.ReservedNode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.ReservedNode where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal
import Network.AWS.Redshift.Types.RecurringCharge
import Network.AWS.Redshift.Types.ReservedNodeOfferingType

-- | Describes a reserved node. You can call the 'DescribeReservedNodeOfferings' API to obtain the available reserved node offerings.
--
--
--
-- /See:/ 'reservedNode' smart constructor.
data ReservedNode = ReservedNode'
  { _rnReservedNodeOfferingType ::
      !(Maybe ReservedNodeOfferingType),
    _rnReservedNodeId :: !(Maybe Text),
    _rnReservedNodeOfferingId :: !(Maybe Text),
    _rnDuration :: !(Maybe Int),
    _rnStartTime :: !(Maybe ISO8601),
    _rnCurrencyCode :: !(Maybe Text),
    _rnState :: !(Maybe Text),
    _rnFixedPrice :: !(Maybe Double),
    _rnNodeCount :: !(Maybe Int),
    _rnUsagePrice :: !(Maybe Double),
    _rnOfferingType :: !(Maybe Text),
    _rnNodeType :: !(Maybe Text),
    _rnRecurringCharges ::
      !(Maybe [RecurringCharge])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReservedNode' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rnReservedNodeOfferingType' -
--
-- * 'rnReservedNodeId' - The unique identifier for the reservation.
--
-- * 'rnReservedNodeOfferingId' - The identifier for the reserved node offering.
--
-- * 'rnDuration' - The duration of the node reservation in seconds.
--
-- * 'rnStartTime' - The time the reservation started. You purchase a reserved node offering for a duration. This is the start time of that duration.
--
-- * 'rnCurrencyCode' - The currency code for the reserved cluster.
--
-- * 'rnState' - The state of the reserved compute node. Possible Values:     * pending-payment-This reserved node has recently been purchased, and the sale has been approved, but payment has not yet been confirmed.     * active-This reserved node is owned by the caller and is available for use.     * payment-failed-Payment failed for the purchase attempt.     * retired-The reserved node is no longer available.      * exchanging-The owner is exchanging the reserved node for another reserved node.
--
-- * 'rnFixedPrice' - The fixed cost Amazon Redshift charges you for this reserved node.
--
-- * 'rnNodeCount' - The number of reserved compute nodes.
--
-- * 'rnUsagePrice' - The hourly rate Amazon Redshift charges you for this reserved node.
--
-- * 'rnOfferingType' - The anticipated utilization of the reserved node, as defined in the reserved node offering.
--
-- * 'rnNodeType' - The node type of the reserved node.
--
-- * 'rnRecurringCharges' - The recurring charges for the reserved node.
reservedNode ::
  ReservedNode
reservedNode =
  ReservedNode'
    { _rnReservedNodeOfferingType =
        Nothing,
      _rnReservedNodeId = Nothing,
      _rnReservedNodeOfferingId = Nothing,
      _rnDuration = Nothing,
      _rnStartTime = Nothing,
      _rnCurrencyCode = Nothing,
      _rnState = Nothing,
      _rnFixedPrice = Nothing,
      _rnNodeCount = Nothing,
      _rnUsagePrice = Nothing,
      _rnOfferingType = Nothing,
      _rnNodeType = Nothing,
      _rnRecurringCharges = Nothing
    }

-- |
rnReservedNodeOfferingType :: Lens' ReservedNode (Maybe ReservedNodeOfferingType)
rnReservedNodeOfferingType = lens _rnReservedNodeOfferingType (\s a -> s {_rnReservedNodeOfferingType = a})

-- | The unique identifier for the reservation.
rnReservedNodeId :: Lens' ReservedNode (Maybe Text)
rnReservedNodeId = lens _rnReservedNodeId (\s a -> s {_rnReservedNodeId = a})

-- | The identifier for the reserved node offering.
rnReservedNodeOfferingId :: Lens' ReservedNode (Maybe Text)
rnReservedNodeOfferingId = lens _rnReservedNodeOfferingId (\s a -> s {_rnReservedNodeOfferingId = a})

-- | The duration of the node reservation in seconds.
rnDuration :: Lens' ReservedNode (Maybe Int)
rnDuration = lens _rnDuration (\s a -> s {_rnDuration = a})

-- | The time the reservation started. You purchase a reserved node offering for a duration. This is the start time of that duration.
rnStartTime :: Lens' ReservedNode (Maybe UTCTime)
rnStartTime = lens _rnStartTime (\s a -> s {_rnStartTime = a}) . mapping _Time

-- | The currency code for the reserved cluster.
rnCurrencyCode :: Lens' ReservedNode (Maybe Text)
rnCurrencyCode = lens _rnCurrencyCode (\s a -> s {_rnCurrencyCode = a})

-- | The state of the reserved compute node. Possible Values:     * pending-payment-This reserved node has recently been purchased, and the sale has been approved, but payment has not yet been confirmed.     * active-This reserved node is owned by the caller and is available for use.     * payment-failed-Payment failed for the purchase attempt.     * retired-The reserved node is no longer available.      * exchanging-The owner is exchanging the reserved node for another reserved node.
rnState :: Lens' ReservedNode (Maybe Text)
rnState = lens _rnState (\s a -> s {_rnState = a})

-- | The fixed cost Amazon Redshift charges you for this reserved node.
rnFixedPrice :: Lens' ReservedNode (Maybe Double)
rnFixedPrice = lens _rnFixedPrice (\s a -> s {_rnFixedPrice = a})

-- | The number of reserved compute nodes.
rnNodeCount :: Lens' ReservedNode (Maybe Int)
rnNodeCount = lens _rnNodeCount (\s a -> s {_rnNodeCount = a})

-- | The hourly rate Amazon Redshift charges you for this reserved node.
rnUsagePrice :: Lens' ReservedNode (Maybe Double)
rnUsagePrice = lens _rnUsagePrice (\s a -> s {_rnUsagePrice = a})

-- | The anticipated utilization of the reserved node, as defined in the reserved node offering.
rnOfferingType :: Lens' ReservedNode (Maybe Text)
rnOfferingType = lens _rnOfferingType (\s a -> s {_rnOfferingType = a})

-- | The node type of the reserved node.
rnNodeType :: Lens' ReservedNode (Maybe Text)
rnNodeType = lens _rnNodeType (\s a -> s {_rnNodeType = a})

-- | The recurring charges for the reserved node.
rnRecurringCharges :: Lens' ReservedNode [RecurringCharge]
rnRecurringCharges = lens _rnRecurringCharges (\s a -> s {_rnRecurringCharges = a}) . _Default . _Coerce

instance FromXML ReservedNode where
  parseXML x =
    ReservedNode'
      <$> (x .@? "ReservedNodeOfferingType")
      <*> (x .@? "ReservedNodeId")
      <*> (x .@? "ReservedNodeOfferingId")
      <*> (x .@? "Duration")
      <*> (x .@? "StartTime")
      <*> (x .@? "CurrencyCode")
      <*> (x .@? "State")
      <*> (x .@? "FixedPrice")
      <*> (x .@? "NodeCount")
      <*> (x .@? "UsagePrice")
      <*> (x .@? "OfferingType")
      <*> (x .@? "NodeType")
      <*> ( x .@? "RecurringCharges" .!@ mempty
              >>= may (parseXMLList "RecurringCharge")
          )

instance Hashable ReservedNode

instance NFData ReservedNode
