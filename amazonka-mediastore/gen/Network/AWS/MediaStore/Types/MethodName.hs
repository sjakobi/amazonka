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
-- Module      : Network.AWS.MediaStore.Types.MethodName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaStore.Types.MethodName
  ( MethodName
      ( ..,
        MethodNameDELETE,
        MethodNameGET,
        MethodNameHEAD,
        MethodNamePUT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MethodName = MethodName'
  { fromMethodName ::
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

pattern MethodNameDELETE :: MethodName
pattern MethodNameDELETE = MethodName' "DELETE"

pattern MethodNameGET :: MethodName
pattern MethodNameGET = MethodName' "GET"

pattern MethodNameHEAD :: MethodName
pattern MethodNameHEAD = MethodName' "HEAD"

pattern MethodNamePUT :: MethodName
pattern MethodNamePUT = MethodName' "PUT"

{-# COMPLETE
  MethodNameDELETE,
  MethodNameGET,
  MethodNameHEAD,
  MethodNamePUT,
  MethodName'
  #-}

instance Prelude.FromText MethodName where
  parser = MethodName' Prelude.<$> Prelude.takeText

instance Prelude.ToText MethodName where
  toText (MethodName' x) = x

instance Prelude.Hashable MethodName

instance Prelude.NFData MethodName

instance Prelude.ToByteString MethodName

instance Prelude.ToQuery MethodName

instance Prelude.ToHeader MethodName

instance Prelude.ToJSON MethodName where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MethodName where
  parseJSON = Prelude.parseJSONText "MethodName"
