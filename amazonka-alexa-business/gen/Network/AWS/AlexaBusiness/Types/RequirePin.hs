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
-- Module      : Network.AWS.AlexaBusiness.Types.RequirePin
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.RequirePin
  ( RequirePin
      ( ..,
        RequirePinNO,
        RequirePinOPTIONAL,
        RequirePinYES
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RequirePin = RequirePin'
  { fromRequirePin ::
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

pattern RequirePinNO :: RequirePin
pattern RequirePinNO = RequirePin' "NO"

pattern RequirePinOPTIONAL :: RequirePin
pattern RequirePinOPTIONAL = RequirePin' "OPTIONAL"

pattern RequirePinYES :: RequirePin
pattern RequirePinYES = RequirePin' "YES"

{-# COMPLETE
  RequirePinNO,
  RequirePinOPTIONAL,
  RequirePinYES,
  RequirePin'
  #-}

instance Prelude.FromText RequirePin where
  parser = RequirePin' Prelude.<$> Prelude.takeText

instance Prelude.ToText RequirePin where
  toText (RequirePin' x) = x

instance Prelude.Hashable RequirePin

instance Prelude.NFData RequirePin

instance Prelude.ToByteString RequirePin

instance Prelude.ToQuery RequirePin

instance Prelude.ToHeader RequirePin

instance Prelude.ToJSON RequirePin where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RequirePin where
  parseJSON = Prelude.parseJSONText "RequirePin"
