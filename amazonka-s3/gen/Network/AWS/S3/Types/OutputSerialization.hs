{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.OutputSerialization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.OutputSerialization where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.CSVOutput
import Network.AWS.S3.Types.JSONOutput

-- | Describes how results of the Select job are serialized.
--
-- /See:/ 'newOutputSerialization' smart constructor.
data OutputSerialization = OutputSerialization'
  { -- | Describes the serialization of CSV-encoded Select results.
    cSV :: Prelude.Maybe CSVOutput,
    -- | Specifies JSON as request\'s output serialization format.
    jSON :: Prelude.Maybe JSONOutput
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'OutputSerialization' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cSV', 'outputSerialization_cSV' - Describes the serialization of CSV-encoded Select results.
--
-- 'jSON', 'outputSerialization_jSON' - Specifies JSON as request\'s output serialization format.
newOutputSerialization ::
  OutputSerialization
newOutputSerialization =
  OutputSerialization'
    { cSV = Prelude.Nothing,
      jSON = Prelude.Nothing
    }

-- | Describes the serialization of CSV-encoded Select results.
outputSerialization_cSV :: Lens.Lens' OutputSerialization (Prelude.Maybe CSVOutput)
outputSerialization_cSV = Lens.lens (\OutputSerialization' {cSV} -> cSV) (\s@OutputSerialization' {} a -> s {cSV = a} :: OutputSerialization)

-- | Specifies JSON as request\'s output serialization format.
outputSerialization_jSON :: Lens.Lens' OutputSerialization (Prelude.Maybe JSONOutput)
outputSerialization_jSON = Lens.lens (\OutputSerialization' {jSON} -> jSON) (\s@OutputSerialization' {} a -> s {jSON = a} :: OutputSerialization)

instance Prelude.Hashable OutputSerialization

instance Prelude.NFData OutputSerialization

instance Prelude.ToXML OutputSerialization where
  toXML OutputSerialization' {..} =
    Prelude.mconcat
      ["CSV" Prelude.@= cSV, "JSON" Prelude.@= jSON]
