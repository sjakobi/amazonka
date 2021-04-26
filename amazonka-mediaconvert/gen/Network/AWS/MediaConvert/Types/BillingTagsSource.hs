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
-- Module      : Network.AWS.MediaConvert.Types.BillingTagsSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.BillingTagsSource
  ( BillingTagsSource
      ( ..,
        BillingTagsSourceJOB,
        BillingTagsSourceJOBTEMPLATE,
        BillingTagsSourcePRESET,
        BillingTagsSourceQUEUE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The tag type that AWS Billing and Cost Management will use to sort your
-- AWS Elemental MediaConvert costs on any billing report that you set up.
newtype BillingTagsSource = BillingTagsSource'
  { fromBillingTagsSource ::
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

pattern BillingTagsSourceJOB :: BillingTagsSource
pattern BillingTagsSourceJOB = BillingTagsSource' "JOB"

pattern BillingTagsSourceJOBTEMPLATE :: BillingTagsSource
pattern BillingTagsSourceJOBTEMPLATE = BillingTagsSource' "JOB_TEMPLATE"

pattern BillingTagsSourcePRESET :: BillingTagsSource
pattern BillingTagsSourcePRESET = BillingTagsSource' "PRESET"

pattern BillingTagsSourceQUEUE :: BillingTagsSource
pattern BillingTagsSourceQUEUE = BillingTagsSource' "QUEUE"

{-# COMPLETE
  BillingTagsSourceJOB,
  BillingTagsSourceJOBTEMPLATE,
  BillingTagsSourcePRESET,
  BillingTagsSourceQUEUE,
  BillingTagsSource'
  #-}

instance Prelude.FromText BillingTagsSource where
  parser = BillingTagsSource' Prelude.<$> Prelude.takeText

instance Prelude.ToText BillingTagsSource where
  toText (BillingTagsSource' x) = x

instance Prelude.Hashable BillingTagsSource

instance Prelude.NFData BillingTagsSource

instance Prelude.ToByteString BillingTagsSource

instance Prelude.ToQuery BillingTagsSource

instance Prelude.ToHeader BillingTagsSource

instance Prelude.ToJSON BillingTagsSource where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON BillingTagsSource where
  parseJSON = Prelude.parseJSONText "BillingTagsSource"
