{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.OfflineStoreConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.OfflineStoreConfig where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SageMaker.Types.DataCatalogConfig
import Network.AWS.SageMaker.Types.S3StorageConfig

-- | The configuration of an @OfflineStore@.
--
-- Provide an @OfflineStoreConfig@ in a request to @CreateFeatureGroup@ to
-- create an @OfflineStore@.
--
-- To encrypt an @OfflineStore@ using at rest data encryption, specify AWS
-- Key Management Service (KMS) key ID, or @KMSKeyId@, in
-- @S3StorageConfig@.
--
-- /See:/ 'newOfflineStoreConfig' smart constructor.
data OfflineStoreConfig = OfflineStoreConfig'
  { -- | Set to @True@ to disable the automatic creation of an AWS Glue table
    -- when configuring an @OfflineStore@.
    disableGlueTableCreation :: Prelude.Maybe Prelude.Bool,
    -- | The meta data of the Glue table that is autogenerated when an
    -- @OfflineStore@ is created.
    dataCatalogConfig :: Prelude.Maybe DataCatalogConfig,
    -- | The Amazon Simple Storage (Amazon S3) location of @OfflineStore@.
    s3StorageConfig :: S3StorageConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'OfflineStoreConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'disableGlueTableCreation', 'offlineStoreConfig_disableGlueTableCreation' - Set to @True@ to disable the automatic creation of an AWS Glue table
-- when configuring an @OfflineStore@.
--
-- 'dataCatalogConfig', 'offlineStoreConfig_dataCatalogConfig' - The meta data of the Glue table that is autogenerated when an
-- @OfflineStore@ is created.
--
-- 's3StorageConfig', 'offlineStoreConfig_s3StorageConfig' - The Amazon Simple Storage (Amazon S3) location of @OfflineStore@.
newOfflineStoreConfig ::
  -- | 's3StorageConfig'
  S3StorageConfig ->
  OfflineStoreConfig
newOfflineStoreConfig pS3StorageConfig_ =
  OfflineStoreConfig'
    { disableGlueTableCreation =
        Prelude.Nothing,
      dataCatalogConfig = Prelude.Nothing,
      s3StorageConfig = pS3StorageConfig_
    }

-- | Set to @True@ to disable the automatic creation of an AWS Glue table
-- when configuring an @OfflineStore@.
offlineStoreConfig_disableGlueTableCreation :: Lens.Lens' OfflineStoreConfig (Prelude.Maybe Prelude.Bool)
offlineStoreConfig_disableGlueTableCreation = Lens.lens (\OfflineStoreConfig' {disableGlueTableCreation} -> disableGlueTableCreation) (\s@OfflineStoreConfig' {} a -> s {disableGlueTableCreation = a} :: OfflineStoreConfig)

-- | The meta data of the Glue table that is autogenerated when an
-- @OfflineStore@ is created.
offlineStoreConfig_dataCatalogConfig :: Lens.Lens' OfflineStoreConfig (Prelude.Maybe DataCatalogConfig)
offlineStoreConfig_dataCatalogConfig = Lens.lens (\OfflineStoreConfig' {dataCatalogConfig} -> dataCatalogConfig) (\s@OfflineStoreConfig' {} a -> s {dataCatalogConfig = a} :: OfflineStoreConfig)

-- | The Amazon Simple Storage (Amazon S3) location of @OfflineStore@.
offlineStoreConfig_s3StorageConfig :: Lens.Lens' OfflineStoreConfig S3StorageConfig
offlineStoreConfig_s3StorageConfig = Lens.lens (\OfflineStoreConfig' {s3StorageConfig} -> s3StorageConfig) (\s@OfflineStoreConfig' {} a -> s {s3StorageConfig = a} :: OfflineStoreConfig)

instance Prelude.FromJSON OfflineStoreConfig where
  parseJSON =
    Prelude.withObject
      "OfflineStoreConfig"
      ( \x ->
          OfflineStoreConfig'
            Prelude.<$> (x Prelude..:? "DisableGlueTableCreation")
            Prelude.<*> (x Prelude..:? "DataCatalogConfig")
            Prelude.<*> (x Prelude..: "S3StorageConfig")
      )

instance Prelude.Hashable OfflineStoreConfig

instance Prelude.NFData OfflineStoreConfig

instance Prelude.ToJSON OfflineStoreConfig where
  toJSON OfflineStoreConfig' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("DisableGlueTableCreation" Prelude..=)
              Prelude.<$> disableGlueTableCreation,
            ("DataCatalogConfig" Prelude..=)
              Prelude.<$> dataCatalogConfig,
            Prelude.Just
              ("S3StorageConfig" Prelude..= s3StorageConfig)
          ]
      )
