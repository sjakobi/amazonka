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
-- Module      : Network.AWS.MediaConvert.Types.RenewalType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.RenewalType
  ( RenewalType
      ( ..,
        RenewalTypeAUTORENEW,
        RenewalTypeEXPIRE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specifies whether the term of your reserved queue pricing plan is
-- automatically extended (AUTO_RENEW) or expires (EXPIRE) at the end of
-- the term.
newtype RenewalType = RenewalType'
  { fromRenewalType ::
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

pattern RenewalTypeAUTORENEW :: RenewalType
pattern RenewalTypeAUTORENEW = RenewalType' "AUTO_RENEW"

pattern RenewalTypeEXPIRE :: RenewalType
pattern RenewalTypeEXPIRE = RenewalType' "EXPIRE"

{-# COMPLETE
  RenewalTypeAUTORENEW,
  RenewalTypeEXPIRE,
  RenewalType'
  #-}

instance Prelude.FromText RenewalType where
  parser = RenewalType' Prelude.<$> Prelude.takeText

instance Prelude.ToText RenewalType where
  toText (RenewalType' x) = x

instance Prelude.Hashable RenewalType

instance Prelude.NFData RenewalType

instance Prelude.ToByteString RenewalType

instance Prelude.ToQuery RenewalType

instance Prelude.ToHeader RenewalType

instance Prelude.ToJSON RenewalType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RenewalType where
  parseJSON = Prelude.parseJSONText "RenewalType"
