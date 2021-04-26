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
-- Module      : Network.AWS.MediaPackage.Types.UtcTiming
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaPackage.Types.UtcTiming
  ( UtcTiming
      ( ..,
        UtcTimingHTTPHEAD,
        UtcTimingHTTPISO,
        UtcTimingNONE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype UtcTiming = UtcTiming'
  { fromUtcTiming ::
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

pattern UtcTimingHTTPHEAD :: UtcTiming
pattern UtcTimingHTTPHEAD = UtcTiming' "HTTP-HEAD"

pattern UtcTimingHTTPISO :: UtcTiming
pattern UtcTimingHTTPISO = UtcTiming' "HTTP-ISO"

pattern UtcTimingNONE :: UtcTiming
pattern UtcTimingNONE = UtcTiming' "NONE"

{-# COMPLETE
  UtcTimingHTTPHEAD,
  UtcTimingHTTPISO,
  UtcTimingNONE,
  UtcTiming'
  #-}

instance Prelude.FromText UtcTiming where
  parser = UtcTiming' Prelude.<$> Prelude.takeText

instance Prelude.ToText UtcTiming where
  toText (UtcTiming' x) = x

instance Prelude.Hashable UtcTiming

instance Prelude.NFData UtcTiming

instance Prelude.ToByteString UtcTiming

instance Prelude.ToQuery UtcTiming

instance Prelude.ToHeader UtcTiming

instance Prelude.ToJSON UtcTiming where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON UtcTiming where
  parseJSON = Prelude.parseJSONText "UtcTiming"
