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
-- Module      : Network.AWS.SMS.Types.ServerValidationStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.ServerValidationStrategy
  ( ServerValidationStrategy
      ( ..,
        ServerValidationStrategyUSERDATA
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ServerValidationStrategy = ServerValidationStrategy'
  { fromServerValidationStrategy ::
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

pattern ServerValidationStrategyUSERDATA :: ServerValidationStrategy
pattern ServerValidationStrategyUSERDATA = ServerValidationStrategy' "USERDATA"

{-# COMPLETE
  ServerValidationStrategyUSERDATA,
  ServerValidationStrategy'
  #-}

instance Prelude.FromText ServerValidationStrategy where
  parser = ServerValidationStrategy' Prelude.<$> Prelude.takeText

instance Prelude.ToText ServerValidationStrategy where
  toText (ServerValidationStrategy' x) = x

instance Prelude.Hashable ServerValidationStrategy

instance Prelude.NFData ServerValidationStrategy

instance Prelude.ToByteString ServerValidationStrategy

instance Prelude.ToQuery ServerValidationStrategy

instance Prelude.ToHeader ServerValidationStrategy

instance Prelude.ToJSON ServerValidationStrategy where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ServerValidationStrategy where
  parseJSON = Prelude.parseJSONText "ServerValidationStrategy"
