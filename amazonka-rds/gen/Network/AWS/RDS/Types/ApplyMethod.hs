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
-- Module      : Network.AWS.RDS.Types.ApplyMethod
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.ApplyMethod
  ( ApplyMethod
      ( ..,
        ApplyMethodImmediate,
        ApplyMethodPendingReboot
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ApplyMethod = ApplyMethod'
  { fromApplyMethod ::
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

pattern ApplyMethodImmediate :: ApplyMethod
pattern ApplyMethodImmediate = ApplyMethod' "immediate"

pattern ApplyMethodPendingReboot :: ApplyMethod
pattern ApplyMethodPendingReboot = ApplyMethod' "pending-reboot"

{-# COMPLETE
  ApplyMethodImmediate,
  ApplyMethodPendingReboot,
  ApplyMethod'
  #-}

instance Prelude.FromText ApplyMethod where
  parser = ApplyMethod' Prelude.<$> Prelude.takeText

instance Prelude.ToText ApplyMethod where
  toText (ApplyMethod' x) = x

instance Prelude.Hashable ApplyMethod

instance Prelude.NFData ApplyMethod

instance Prelude.ToByteString ApplyMethod

instance Prelude.ToQuery ApplyMethod

instance Prelude.ToHeader ApplyMethod

instance Prelude.FromXML ApplyMethod where
  parseXML = Prelude.parseXMLText "ApplyMethod"
