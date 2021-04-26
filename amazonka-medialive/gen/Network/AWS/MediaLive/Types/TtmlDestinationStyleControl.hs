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
-- Module      : Network.AWS.MediaLive.Types.TtmlDestinationStyleControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.TtmlDestinationStyleControl
  ( TtmlDestinationStyleControl
      ( ..,
        TtmlDestinationStyleControlPASSTHROUGH,
        TtmlDestinationStyleControlUSECONFIGURED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Ttml Destination Style Control
newtype TtmlDestinationStyleControl = TtmlDestinationStyleControl'
  { fromTtmlDestinationStyleControl ::
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

pattern TtmlDestinationStyleControlPASSTHROUGH :: TtmlDestinationStyleControl
pattern TtmlDestinationStyleControlPASSTHROUGH = TtmlDestinationStyleControl' "PASSTHROUGH"

pattern TtmlDestinationStyleControlUSECONFIGURED :: TtmlDestinationStyleControl
pattern TtmlDestinationStyleControlUSECONFIGURED = TtmlDestinationStyleControl' "USE_CONFIGURED"

{-# COMPLETE
  TtmlDestinationStyleControlPASSTHROUGH,
  TtmlDestinationStyleControlUSECONFIGURED,
  TtmlDestinationStyleControl'
  #-}

instance Prelude.FromText TtmlDestinationStyleControl where
  parser = TtmlDestinationStyleControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText TtmlDestinationStyleControl where
  toText (TtmlDestinationStyleControl' x) = x

instance Prelude.Hashable TtmlDestinationStyleControl

instance Prelude.NFData TtmlDestinationStyleControl

instance Prelude.ToByteString TtmlDestinationStyleControl

instance Prelude.ToQuery TtmlDestinationStyleControl

instance Prelude.ToHeader TtmlDestinationStyleControl

instance Prelude.ToJSON TtmlDestinationStyleControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TtmlDestinationStyleControl where
  parseJSON = Prelude.parseJSONText "TtmlDestinationStyleControl"
