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
-- Module      : Network.AWS.RDS.Types.EngineFamily
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.EngineFamily
  ( EngineFamily
      ( ..,
        EngineFamilyMYSQL,
        EngineFamilyPOSTGRESQL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EngineFamily = EngineFamily'
  { fromEngineFamily ::
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

pattern EngineFamilyMYSQL :: EngineFamily
pattern EngineFamilyMYSQL = EngineFamily' "MYSQL"

pattern EngineFamilyPOSTGRESQL :: EngineFamily
pattern EngineFamilyPOSTGRESQL = EngineFamily' "POSTGRESQL"

{-# COMPLETE
  EngineFamilyMYSQL,
  EngineFamilyPOSTGRESQL,
  EngineFamily'
  #-}

instance Prelude.FromText EngineFamily where
  parser = EngineFamily' Prelude.<$> Prelude.takeText

instance Prelude.ToText EngineFamily where
  toText (EngineFamily' x) = x

instance Prelude.Hashable EngineFamily

instance Prelude.NFData EngineFamily

instance Prelude.ToByteString EngineFamily

instance Prelude.ToQuery EngineFamily

instance Prelude.ToHeader EngineFamily
