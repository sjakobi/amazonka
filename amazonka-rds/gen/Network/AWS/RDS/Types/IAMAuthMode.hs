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
-- Module      : Network.AWS.RDS.Types.IAMAuthMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.IAMAuthMode
  ( IAMAuthMode
      ( ..,
        IAMAuthModeDISABLED,
        IAMAuthModeREQUIRED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype IAMAuthMode = IAMAuthMode'
  { fromIAMAuthMode ::
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

pattern IAMAuthModeDISABLED :: IAMAuthMode
pattern IAMAuthModeDISABLED = IAMAuthMode' "DISABLED"

pattern IAMAuthModeREQUIRED :: IAMAuthMode
pattern IAMAuthModeREQUIRED = IAMAuthMode' "REQUIRED"

{-# COMPLETE
  IAMAuthModeDISABLED,
  IAMAuthModeREQUIRED,
  IAMAuthMode'
  #-}

instance Prelude.FromText IAMAuthMode where
  parser = IAMAuthMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText IAMAuthMode where
  toText (IAMAuthMode' x) = x

instance Prelude.Hashable IAMAuthMode

instance Prelude.NFData IAMAuthMode

instance Prelude.ToByteString IAMAuthMode

instance Prelude.ToQuery IAMAuthMode

instance Prelude.ToHeader IAMAuthMode

instance Prelude.FromXML IAMAuthMode where
  parseXML = Prelude.parseXMLText "IAMAuthMode"
