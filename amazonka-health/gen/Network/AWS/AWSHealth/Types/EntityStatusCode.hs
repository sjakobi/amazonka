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
-- Module      : Network.AWS.AWSHealth.Types.EntityStatusCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AWSHealth.Types.EntityStatusCode
  ( EntityStatusCode
      ( ..,
        EntityStatusCodeIMPAIRED,
        EntityStatusCodeUNIMPAIRED,
        EntityStatusCodeUNKNOWN
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EntityStatusCode = EntityStatusCode'
  { fromEntityStatusCode ::
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

pattern EntityStatusCodeIMPAIRED :: EntityStatusCode
pattern EntityStatusCodeIMPAIRED = EntityStatusCode' "IMPAIRED"

pattern EntityStatusCodeUNIMPAIRED :: EntityStatusCode
pattern EntityStatusCodeUNIMPAIRED = EntityStatusCode' "UNIMPAIRED"

pattern EntityStatusCodeUNKNOWN :: EntityStatusCode
pattern EntityStatusCodeUNKNOWN = EntityStatusCode' "UNKNOWN"

{-# COMPLETE
  EntityStatusCodeIMPAIRED,
  EntityStatusCodeUNIMPAIRED,
  EntityStatusCodeUNKNOWN,
  EntityStatusCode'
  #-}

instance Prelude.FromText EntityStatusCode where
  parser = EntityStatusCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText EntityStatusCode where
  toText (EntityStatusCode' x) = x

instance Prelude.Hashable EntityStatusCode

instance Prelude.NFData EntityStatusCode

instance Prelude.ToByteString EntityStatusCode

instance Prelude.ToQuery EntityStatusCode

instance Prelude.ToHeader EntityStatusCode

instance Prelude.ToJSON EntityStatusCode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON EntityStatusCode where
  parseJSON = Prelude.parseJSONText "EntityStatusCode"
