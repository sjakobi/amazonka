{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.Operator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.Operator
  ( Operator
      ( ..,
        Contains,
        Equals,
        Exists,
        GreaterThan,
        GreaterThanOrEqualTo,
        IN,
        LessThan,
        LessThanOrEqualTo,
        NotEquals,
        NotExists
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Operator = Operator' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Contains :: Operator
pattern Contains = Operator' "Contains"

pattern Equals :: Operator
pattern Equals = Operator' "Equals"

pattern Exists :: Operator
pattern Exists = Operator' "Exists"

pattern GreaterThan :: Operator
pattern GreaterThan = Operator' "GreaterThan"

pattern GreaterThanOrEqualTo :: Operator
pattern GreaterThanOrEqualTo = Operator' "GreaterThanOrEqualTo"

pattern IN :: Operator
pattern IN = Operator' "In"

pattern LessThan :: Operator
pattern LessThan = Operator' "LessThan"

pattern LessThanOrEqualTo :: Operator
pattern LessThanOrEqualTo = Operator' "LessThanOrEqualTo"

pattern NotEquals :: Operator
pattern NotEquals = Operator' "NotEquals"

pattern NotExists :: Operator
pattern NotExists = Operator' "NotExists"

{-# COMPLETE
  Contains,
  Equals,
  Exists,
  GreaterThan,
  GreaterThanOrEqualTo,
  IN,
  LessThan,
  LessThanOrEqualTo,
  NotEquals,
  NotExists,
  Operator'
  #-}

instance FromText Operator where
  parser = (Operator' . mk) <$> takeText

instance ToText Operator where
  toText (Operator' ci) = original ci

instance Hashable Operator

instance NFData Operator

instance ToByteString Operator

instance ToQuery Operator

instance ToHeader Operator

instance ToJSON Operator where
  toJSON = toJSONText
