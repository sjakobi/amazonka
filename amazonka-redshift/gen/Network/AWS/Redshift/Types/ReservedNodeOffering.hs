{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.ReservedNodeOffering
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.ReservedNodeOffering where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal
import Network.AWS.Redshift.Types.RecurringCharge
import Network.AWS.Redshift.Types.ReservedNodeOfferingType

-- | Describes a reserved node offering.
--
--
--
-- /See:/ 'reservedNodeOffering' smart constructor.
data ReservedNodeOffering = ReservedNodeOffering'
  { _rnoReservedNodeOfferingType ::
      !( Maybe
           ReservedNodeOfferingType
       ),
    _rnoReservedNodeOfferingId ::
      !(Maybe Text),
    _rnoDuration :: !(Maybe Int),
    _rnoCurrencyCode ::
      !(Maybe Text),
    _rnoFixedPrice ::
      !(Maybe Double),
    _rnoUsagePrice ::
      !(Maybe Double),
    _rnoOfferingType ::
      !(Maybe Text),
    _rnoNodeType :: !(Maybe Text),
    _rnoRecurringCharges ::
      !(Maybe [RecurringCharge])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReservedNodeOffering' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rnoReservedNodeOfferingType' -
--
-- * 'rnoReservedNodeOfferingId' - The offering identifier.
--
-- * 'rnoDuration' - The duration, in seconds, for which the offering will reserve the node.
--
-- * 'rnoCurrencyCode' - The currency code for the compute nodes offering.
--
-- * 'rnoFixedPrice' - The upfront fixed charge you will pay to purchase the specific reserved node offering.
--
-- * 'rnoUsagePrice' - The rate you are charged for each hour the cluster that is using the offering is running.
--
-- * 'rnoOfferingType' - The anticipated utilization of the reserved node, as defined in the reserved node offering.
--
-- * 'rnoNodeType' - The node type offered by the reserved node offering.
--
-- * 'rnoRecurringCharges' - The charge to your account regardless of whether you are creating any clusters using the node offering. Recurring charges are only in effect for heavy-utilization reserved nodes.
reservedNodeOffering ::
  ReservedNodeOffering
reservedNodeOffering =
  ReservedNodeOffering'
    { _rnoReservedNodeOfferingType =
        Nothing,
      _rnoReservedNodeOfferingId = Nothing,
      _rnoDuration = Nothing,
      _rnoCurrencyCode = Nothing,
      _rnoFixedPrice = Nothing,
      _rnoUsagePrice = Nothing,
      _rnoOfferingType = Nothing,
      _rnoNodeType = Nothing,
      _rnoRecurringCharges = Nothing
    }

-- |
rnoReservedNodeOfferingType :: Lens' ReservedNodeOffering (Maybe ReservedNodeOfferingType)
rnoReservedNodeOfferingType = lens _rnoReservedNodeOfferingType (\s a -> s {_rnoReservedNodeOfferingType = a})

-- | The offering identifier.
rnoReservedNodeOfferingId :: Lens' ReservedNodeOffering (Maybe Text)
rnoReservedNodeOfferingId = lens _rnoReservedNodeOfferingId (\s a -> s {_rnoReservedNodeOfferingId = a})

-- | The duration, in seconds, for which the offering will reserve the node.
rnoDuration :: Lens' ReservedNodeOffering (Maybe Int)
rnoDuration = lens _rnoDuration (\s a -> s {_rnoDuration = a})

-- | The currency code for the compute nodes offering.
rnoCurrencyCode :: Lens' ReservedNodeOffering (Maybe Text)
rnoCurrencyCode = lens _rnoCurrencyCode (\s a -> s {_rnoCurrencyCode = a})

-- | The upfront fixed charge you will pay to purchase the specific reserved node offering.
rnoFixedPrice :: Lens' ReservedNodeOffering (Maybe Double)
rnoFixedPrice = lens _rnoFixedPrice (\s a -> s {_rnoFixedPrice = a})

-- | The rate you are charged for each hour the cluster that is using the offering is running.
rnoUsagePrice :: Lens' ReservedNodeOffering (Maybe Double)
rnoUsagePrice = lens _rnoUsagePrice (\s a -> s {_rnoUsagePrice = a})

-- | The anticipated utilization of the reserved node, as defined in the reserved node offering.
rnoOfferingType :: Lens' ReservedNodeOffering (Maybe Text)
rnoOfferingType = lens _rnoOfferingType (\s a -> s {_rnoOfferingType = a})

-- | The node type offered by the reserved node offering.
rnoNodeType :: Lens' ReservedNodeOffering (Maybe Text)
rnoNodeType = lens _rnoNodeType (\s a -> s {_rnoNodeType = a})

-- | The charge to your account regardless of whether you are creating any clusters using the node offering. Recurring charges are only in effect for heavy-utilization reserved nodes.
rnoRecurringCharges :: Lens' ReservedNodeOffering [RecurringCharge]
rnoRecurringCharges = lens _rnoRecurringCharges (\s a -> s {_rnoRecurringCharges = a}) . _Default . _Coerce

instance FromXML ReservedNodeOffering where
  parseXML x =
    ReservedNodeOffering'
      <$> (x .@? "ReservedNodeOfferingType")
      <*> (x .@? "ReservedNodeOfferingId")
      <*> (x .@? "Duration")
      <*> (x .@? "CurrencyCode")
      <*> (x .@? "FixedPrice")
      <*> (x .@? "UsagePrice")
      <*> (x .@? "OfferingType")
      <*> (x .@? "NodeType")
      <*> ( x .@? "RecurringCharges" .!@ mempty
              >>= may (parseXMLList "RecurringCharge")
          )

instance Hashable ReservedNodeOffering

instance NFData ReservedNodeOffering
