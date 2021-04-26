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
-- Module      : Network.AWS.SMS.Types.ScriptType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.ScriptType
  ( ScriptType
      ( ..,
        ScriptTypePOWERSHELLSCRIPT,
        ScriptTypeSHELLSCRIPT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ScriptType = ScriptType'
  { fromScriptType ::
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

pattern ScriptTypePOWERSHELLSCRIPT :: ScriptType
pattern ScriptTypePOWERSHELLSCRIPT = ScriptType' "POWERSHELL_SCRIPT"

pattern ScriptTypeSHELLSCRIPT :: ScriptType
pattern ScriptTypeSHELLSCRIPT = ScriptType' "SHELL_SCRIPT"

{-# COMPLETE
  ScriptTypePOWERSHELLSCRIPT,
  ScriptTypeSHELLSCRIPT,
  ScriptType'
  #-}

instance Prelude.FromText ScriptType where
  parser = ScriptType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ScriptType where
  toText (ScriptType' x) = x

instance Prelude.Hashable ScriptType

instance Prelude.NFData ScriptType

instance Prelude.ToByteString ScriptType

instance Prelude.ToQuery ScriptType

instance Prelude.ToHeader ScriptType

instance Prelude.ToJSON ScriptType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ScriptType where
  parseJSON = Prelude.parseJSONText "ScriptType"
