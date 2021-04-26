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
-- Module      : Network.AWS.S3.Types.Tier
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.Tier
  ( Tier
      ( ..,
        TierBulk,
        TierExpedited,
        TierStandard
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype Tier = Tier' {fromTier :: Prelude.Text}
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern TierBulk :: Tier
pattern TierBulk = Tier' "Bulk"

pattern TierExpedited :: Tier
pattern TierExpedited = Tier' "Expedited"

pattern TierStandard :: Tier
pattern TierStandard = Tier' "Standard"

{-# COMPLETE
  TierBulk,
  TierExpedited,
  TierStandard,
  Tier'
  #-}

instance Prelude.FromText Tier where
  parser = Tier' Prelude.<$> Prelude.takeText

instance Prelude.ToText Tier where
  toText (Tier' x) = x

instance Prelude.Hashable Tier

instance Prelude.NFData Tier

instance Prelude.ToByteString Tier

instance Prelude.ToQuery Tier

instance Prelude.ToHeader Tier

instance Prelude.ToXML Tier where
  toXML = Prelude.toXMLText
