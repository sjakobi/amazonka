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
-- Module      : Network.AWS.SMS.Types.OutputFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.OutputFormat
  ( OutputFormat
      ( ..,
        OutputFormatJSON,
        OutputFormatYAML
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OutputFormat = OutputFormat'
  { fromOutputFormat ::
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

pattern OutputFormatJSON :: OutputFormat
pattern OutputFormatJSON = OutputFormat' "JSON"

pattern OutputFormatYAML :: OutputFormat
pattern OutputFormatYAML = OutputFormat' "YAML"

{-# COMPLETE
  OutputFormatJSON,
  OutputFormatYAML,
  OutputFormat'
  #-}

instance Prelude.FromText OutputFormat where
  parser = OutputFormat' Prelude.<$> Prelude.takeText

instance Prelude.ToText OutputFormat where
  toText (OutputFormat' x) = x

instance Prelude.Hashable OutputFormat

instance Prelude.NFData OutputFormat

instance Prelude.ToByteString OutputFormat

instance Prelude.ToQuery OutputFormat

instance Prelude.ToHeader OutputFormat

instance Prelude.ToJSON OutputFormat where
  toJSON = Prelude.toJSONText
