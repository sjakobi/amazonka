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
-- Module      : Network.AWS.CodeBuild.Types.SourceAuthType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.SourceAuthType
  ( SourceAuthType
      ( ..,
        SourceAuthTypeOAUTH
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SourceAuthType = SourceAuthType'
  { fromSourceAuthType ::
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

pattern SourceAuthTypeOAUTH :: SourceAuthType
pattern SourceAuthTypeOAUTH = SourceAuthType' "OAUTH"

{-# COMPLETE
  SourceAuthTypeOAUTH,
  SourceAuthType'
  #-}

instance Prelude.FromText SourceAuthType where
  parser = SourceAuthType' Prelude.<$> Prelude.takeText

instance Prelude.ToText SourceAuthType where
  toText (SourceAuthType' x) = x

instance Prelude.Hashable SourceAuthType

instance Prelude.NFData SourceAuthType

instance Prelude.ToByteString SourceAuthType

instance Prelude.ToQuery SourceAuthType

instance Prelude.ToHeader SourceAuthType

instance Prelude.ToJSON SourceAuthType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SourceAuthType where
  parseJSON = Prelude.parseJSONText "SourceAuthType"
