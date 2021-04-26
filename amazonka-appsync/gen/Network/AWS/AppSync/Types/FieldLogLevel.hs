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
-- Module      : Network.AWS.AppSync.Types.FieldLogLevel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppSync.Types.FieldLogLevel
  ( FieldLogLevel
      ( ..,
        FieldLogLevelALL,
        FieldLogLevelERROR,
        FieldLogLevelNONE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FieldLogLevel = FieldLogLevel'
  { fromFieldLogLevel ::
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

pattern FieldLogLevelALL :: FieldLogLevel
pattern FieldLogLevelALL = FieldLogLevel' "ALL"

pattern FieldLogLevelERROR :: FieldLogLevel
pattern FieldLogLevelERROR = FieldLogLevel' "ERROR"

pattern FieldLogLevelNONE :: FieldLogLevel
pattern FieldLogLevelNONE = FieldLogLevel' "NONE"

{-# COMPLETE
  FieldLogLevelALL,
  FieldLogLevelERROR,
  FieldLogLevelNONE,
  FieldLogLevel'
  #-}

instance Prelude.FromText FieldLogLevel where
  parser = FieldLogLevel' Prelude.<$> Prelude.takeText

instance Prelude.ToText FieldLogLevel where
  toText (FieldLogLevel' x) = x

instance Prelude.Hashable FieldLogLevel

instance Prelude.NFData FieldLogLevel

instance Prelude.ToByteString FieldLogLevel

instance Prelude.ToQuery FieldLogLevel

instance Prelude.ToHeader FieldLogLevel

instance Prelude.ToJSON FieldLogLevel where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON FieldLogLevel where
  parseJSON = Prelude.parseJSONText "FieldLogLevel"
