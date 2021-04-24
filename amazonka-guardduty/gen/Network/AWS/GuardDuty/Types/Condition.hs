{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.Types.Condition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.Condition where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about the condition.
--
--
--
-- /See:/ 'condition' smart constructor.
data Condition = Condition'
  { _cEQ :: !(Maybe [Text]),
    _cGreaterThan :: !(Maybe Integer),
    _cGT :: !(Maybe Int),
    _cGreaterThanOrEqual :: !(Maybe Integer),
    _cLte :: !(Maybe Int),
    _cNeq :: !(Maybe [Text]),
    _cNotEquals :: !(Maybe [Text]),
    _cLessThan :: !(Maybe Integer),
    _cEquals :: !(Maybe [Text]),
    _cGte :: !(Maybe Int),
    _cLessThanOrEqual :: !(Maybe Integer),
    _cLT :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Condition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cEQ' - Represents the /equal/ condition to be applied to a single field when querying for findings.
--
-- * 'cGreaterThan' - Represents a /greater than/ condition to be applied to a single field when querying for findings.
--
-- * 'cGT' - Represents a /greater than/ condition to be applied to a single field when querying for findings.
--
-- * 'cGreaterThanOrEqual' - Represents a /greater than or equal/ condition to be applied to a single field when querying for findings.
--
-- * 'cLte' - Represents a /less than or equal/ condition to be applied to a single field when querying for findings.
--
-- * 'cNeq' - Represents the /not equal/ condition to be applied to a single field when querying for findings.
--
-- * 'cNotEquals' - Represents a /not equal/ ____ condition to be applied to a single field when querying for findings.
--
-- * 'cLessThan' - Represents a /less than/ condition to be applied to a single field when querying for findings.
--
-- * 'cEquals' - Represents an /equal/ ____ condition to be applied to a single field when querying for findings.
--
-- * 'cGte' - Represents a /greater than or equal/ condition to be applied to a single field when querying for findings.
--
-- * 'cLessThanOrEqual' - Represents a /less than or equal/ condition to be applied to a single field when querying for findings.
--
-- * 'cLT' - Represents a /less than/ condition to be applied to a single field when querying for findings.
condition ::
  Condition
condition =
  Condition'
    { _cEQ = Nothing,
      _cGreaterThan = Nothing,
      _cGT = Nothing,
      _cGreaterThanOrEqual = Nothing,
      _cLte = Nothing,
      _cNeq = Nothing,
      _cNotEquals = Nothing,
      _cLessThan = Nothing,
      _cEquals = Nothing,
      _cGte = Nothing,
      _cLessThanOrEqual = Nothing,
      _cLT = Nothing
    }

-- | Represents the /equal/ condition to be applied to a single field when querying for findings.
cEQ :: Lens' Condition [Text]
cEQ = lens _cEQ (\s a -> s {_cEQ = a}) . _Default . _Coerce

-- | Represents a /greater than/ condition to be applied to a single field when querying for findings.
cGreaterThan :: Lens' Condition (Maybe Integer)
cGreaterThan = lens _cGreaterThan (\s a -> s {_cGreaterThan = a})

-- | Represents a /greater than/ condition to be applied to a single field when querying for findings.
cGT :: Lens' Condition (Maybe Int)
cGT = lens _cGT (\s a -> s {_cGT = a})

-- | Represents a /greater than or equal/ condition to be applied to a single field when querying for findings.
cGreaterThanOrEqual :: Lens' Condition (Maybe Integer)
cGreaterThanOrEqual = lens _cGreaterThanOrEqual (\s a -> s {_cGreaterThanOrEqual = a})

-- | Represents a /less than or equal/ condition to be applied to a single field when querying for findings.
cLte :: Lens' Condition (Maybe Int)
cLte = lens _cLte (\s a -> s {_cLte = a})

-- | Represents the /not equal/ condition to be applied to a single field when querying for findings.
cNeq :: Lens' Condition [Text]
cNeq = lens _cNeq (\s a -> s {_cNeq = a}) . _Default . _Coerce

-- | Represents a /not equal/ ____ condition to be applied to a single field when querying for findings.
cNotEquals :: Lens' Condition [Text]
cNotEquals = lens _cNotEquals (\s a -> s {_cNotEquals = a}) . _Default . _Coerce

-- | Represents a /less than/ condition to be applied to a single field when querying for findings.
cLessThan :: Lens' Condition (Maybe Integer)
cLessThan = lens _cLessThan (\s a -> s {_cLessThan = a})

-- | Represents an /equal/ ____ condition to be applied to a single field when querying for findings.
cEquals :: Lens' Condition [Text]
cEquals = lens _cEquals (\s a -> s {_cEquals = a}) . _Default . _Coerce

-- | Represents a /greater than or equal/ condition to be applied to a single field when querying for findings.
cGte :: Lens' Condition (Maybe Int)
cGte = lens _cGte (\s a -> s {_cGte = a})

-- | Represents a /less than or equal/ condition to be applied to a single field when querying for findings.
cLessThanOrEqual :: Lens' Condition (Maybe Integer)
cLessThanOrEqual = lens _cLessThanOrEqual (\s a -> s {_cLessThanOrEqual = a})

-- | Represents a /less than/ condition to be applied to a single field when querying for findings.
cLT :: Lens' Condition (Maybe Int)
cLT = lens _cLT (\s a -> s {_cLT = a})

instance FromJSON Condition where
  parseJSON =
    withObject
      "Condition"
      ( \x ->
          Condition'
            <$> (x .:? "eq" .!= mempty)
            <*> (x .:? "greaterThan")
            <*> (x .:? "gt")
            <*> (x .:? "greaterThanOrEqual")
            <*> (x .:? "lte")
            <*> (x .:? "neq" .!= mempty)
            <*> (x .:? "notEquals" .!= mempty)
            <*> (x .:? "lessThan")
            <*> (x .:? "equals" .!= mempty)
            <*> (x .:? "gte")
            <*> (x .:? "lessThanOrEqual")
            <*> (x .:? "lt")
      )

instance Hashable Condition

instance NFData Condition

instance ToJSON Condition where
  toJSON Condition' {..} =
    object
      ( catMaybes
          [ ("eq" .=) <$> _cEQ,
            ("greaterThan" .=) <$> _cGreaterThan,
            ("gt" .=) <$> _cGT,
            ("greaterThanOrEqual" .=) <$> _cGreaterThanOrEqual,
            ("lte" .=) <$> _cLte,
            ("neq" .=) <$> _cNeq,
            ("notEquals" .=) <$> _cNotEquals,
            ("lessThan" .=) <$> _cLessThan,
            ("equals" .=) <$> _cEquals,
            ("gte" .=) <$> _cGte,
            ("lessThanOrEqual" .=) <$> _cLessThanOrEqual,
            ("lt" .=) <$> _cLT
          ]
      )
