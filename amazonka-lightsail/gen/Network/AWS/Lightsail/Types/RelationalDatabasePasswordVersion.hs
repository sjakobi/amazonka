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
-- Module      : Network.AWS.Lightsail.Types.RelationalDatabasePasswordVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.RelationalDatabasePasswordVersion
  ( RelationalDatabasePasswordVersion
      ( ..,
        RelationalDatabasePasswordVersionCURRENT,
        RelationalDatabasePasswordVersionPENDING,
        RelationalDatabasePasswordVersionPREVIOUS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RelationalDatabasePasswordVersion = RelationalDatabasePasswordVersion'
  { fromRelationalDatabasePasswordVersion ::
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

pattern RelationalDatabasePasswordVersionCURRENT :: RelationalDatabasePasswordVersion
pattern RelationalDatabasePasswordVersionCURRENT = RelationalDatabasePasswordVersion' "CURRENT"

pattern RelationalDatabasePasswordVersionPENDING :: RelationalDatabasePasswordVersion
pattern RelationalDatabasePasswordVersionPENDING = RelationalDatabasePasswordVersion' "PENDING"

pattern RelationalDatabasePasswordVersionPREVIOUS :: RelationalDatabasePasswordVersion
pattern RelationalDatabasePasswordVersionPREVIOUS = RelationalDatabasePasswordVersion' "PREVIOUS"

{-# COMPLETE
  RelationalDatabasePasswordVersionCURRENT,
  RelationalDatabasePasswordVersionPENDING,
  RelationalDatabasePasswordVersionPREVIOUS,
  RelationalDatabasePasswordVersion'
  #-}

instance Prelude.FromText RelationalDatabasePasswordVersion where
  parser = RelationalDatabasePasswordVersion' Prelude.<$> Prelude.takeText

instance Prelude.ToText RelationalDatabasePasswordVersion where
  toText (RelationalDatabasePasswordVersion' x) = x

instance Prelude.Hashable RelationalDatabasePasswordVersion

instance Prelude.NFData RelationalDatabasePasswordVersion

instance Prelude.ToByteString RelationalDatabasePasswordVersion

instance Prelude.ToQuery RelationalDatabasePasswordVersion

instance Prelude.ToHeader RelationalDatabasePasswordVersion

instance Prelude.ToJSON RelationalDatabasePasswordVersion where
  toJSON = Prelude.toJSONText
