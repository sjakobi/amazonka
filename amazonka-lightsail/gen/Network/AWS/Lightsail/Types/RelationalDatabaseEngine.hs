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
-- Module      : Network.AWS.Lightsail.Types.RelationalDatabaseEngine
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.RelationalDatabaseEngine
  ( RelationalDatabaseEngine
      ( ..,
        RelationalDatabaseEngineMysql
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RelationalDatabaseEngine = RelationalDatabaseEngine'
  { fromRelationalDatabaseEngine ::
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

pattern RelationalDatabaseEngineMysql :: RelationalDatabaseEngine
pattern RelationalDatabaseEngineMysql = RelationalDatabaseEngine' "mysql"

{-# COMPLETE
  RelationalDatabaseEngineMysql,
  RelationalDatabaseEngine'
  #-}

instance Prelude.FromText RelationalDatabaseEngine where
  parser = RelationalDatabaseEngine' Prelude.<$> Prelude.takeText

instance Prelude.ToText RelationalDatabaseEngine where
  toText (RelationalDatabaseEngine' x) = x

instance Prelude.Hashable RelationalDatabaseEngine

instance Prelude.NFData RelationalDatabaseEngine

instance Prelude.ToByteString RelationalDatabaseEngine

instance Prelude.ToQuery RelationalDatabaseEngine

instance Prelude.ToHeader RelationalDatabaseEngine

instance Prelude.FromJSON RelationalDatabaseEngine where
  parseJSON = Prelude.parseJSONText "RelationalDatabaseEngine"
