{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.OperatorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.OperatorType
  ( OperatorType
      ( ..,
        Between,
        EQ',
        GE,
        GT',
        IN,
        LE,
        LT'
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal

data OperatorType = OperatorType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Between :: OperatorType
pattern Between = OperatorType' "between"

pattern EQ' :: OperatorType
pattern EQ' = OperatorType' "eq"

pattern GE :: OperatorType
pattern GE = OperatorType' "ge"

pattern GT' :: OperatorType
pattern GT' = OperatorType' "gt"

pattern IN :: OperatorType
pattern IN = OperatorType' "in"

pattern LE :: OperatorType
pattern LE = OperatorType' "le"

pattern LT' :: OperatorType
pattern LT' = OperatorType' "lt"

{-# COMPLETE
  Between,
  EQ',
  GE,
  GT',
  IN,
  LE,
  LT',
  OperatorType'
  #-}

instance FromText OperatorType where
  parser = (OperatorType' . mk) <$> takeText

instance ToText OperatorType where
  toText (OperatorType' ci) = original ci

instance Hashable OperatorType

instance NFData OperatorType

instance ToByteString OperatorType

instance ToQuery OperatorType

instance ToHeader OperatorType
