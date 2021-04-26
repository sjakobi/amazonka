{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WAFRegional.Types.RateKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WAFRegional.Types.RateKey
  ( RateKey
      ( ..,
        RateKeyIP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RateKey = RateKey'
  { fromRateKey ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern RateKeyIP :: RateKey
pattern RateKeyIP = RateKey' "IP"

{-# COMPLETE
  RateKeyIP,
  RateKey'
  #-}

instance Prelude.FromText RateKey where
  parser = RateKey' Prelude.<$> Prelude.takeText

instance Prelude.ToText RateKey where
  toText (RateKey' x) = x

instance Prelude.Hashable RateKey

instance Prelude.NFData RateKey

instance Prelude.ToByteString RateKey

instance Prelude.ToQuery RateKey

instance Prelude.ToHeader RateKey

instance Prelude.ToJSON RateKey where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RateKey where
  parseJSON = Prelude.parseJSONText "RateKey"
