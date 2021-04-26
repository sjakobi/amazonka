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
-- Module      : Network.AWS.RDS.Types.DBClusterEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.DBClusterEndpoint where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | This data type represents the information you need to connect to an
-- Amazon Aurora DB cluster. This data type is used as a response element
-- in the following actions:
--
-- -   @CreateDBClusterEndpoint@
--
-- -   @DescribeDBClusterEndpoints@
--
-- -   @ModifyDBClusterEndpoint@
--
-- -   @DeleteDBClusterEndpoint@
--
-- For the data structure that represents Amazon RDS DB instance endpoints,
-- see @Endpoint@.
--
-- /See:/ 'newDBClusterEndpoint' smart constructor.
data DBClusterEndpoint = DBClusterEndpoint'
  { -- | The identifier associated with the endpoint. This parameter is stored as
    -- a lowercase string.
    dBClusterEndpointIdentifier :: Prelude.Maybe Prelude.Text,
    -- | The current status of the endpoint. One of: @creating@, @available@,
    -- @deleting@, @inactive@, @modifying@. The @inactive@ state applies to an
    -- endpoint that can\'t be used for a certain kind of cluster, such as a
    -- @writer@ endpoint for a read-only secondary cluster in a global
    -- database.
    status :: Prelude.Maybe Prelude.Text,
    -- | List of DB instance identifiers that aren\'t part of the custom endpoint
    -- group. All other eligible instances are reachable through the custom
    -- endpoint. Only relevant if the list of static members is empty.
    excludedMembers :: Prelude.Maybe [Prelude.Text],
    -- | The type of the endpoint. One of: @READER@, @WRITER@, @CUSTOM@.
    endpointType :: Prelude.Maybe Prelude.Text,
    -- | The type associated with a custom endpoint. One of: @READER@, @WRITER@,
    -- @ANY@.
    customEndpointType :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) for the endpoint.
    dBClusterEndpointArn :: Prelude.Maybe Prelude.Text,
    -- | The DB cluster identifier of the DB cluster associated with the
    -- endpoint. This parameter is stored as a lowercase string.
    dBClusterIdentifier :: Prelude.Maybe Prelude.Text,
    -- | A unique system-generated identifier for an endpoint. It remains the
    -- same for the whole life of the endpoint.
    dBClusterEndpointResourceIdentifier :: Prelude.Maybe Prelude.Text,
    -- | The DNS address of the endpoint.
    endpoint :: Prelude.Maybe Prelude.Text,
    -- | List of DB instance identifiers that are part of the custom endpoint
    -- group.
    staticMembers :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DBClusterEndpoint' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBClusterEndpointIdentifier', 'dBClusterEndpoint_dBClusterEndpointIdentifier' - The identifier associated with the endpoint. This parameter is stored as
-- a lowercase string.
--
-- 'status', 'dBClusterEndpoint_status' - The current status of the endpoint. One of: @creating@, @available@,
-- @deleting@, @inactive@, @modifying@. The @inactive@ state applies to an
-- endpoint that can\'t be used for a certain kind of cluster, such as a
-- @writer@ endpoint for a read-only secondary cluster in a global
-- database.
--
-- 'excludedMembers', 'dBClusterEndpoint_excludedMembers' - List of DB instance identifiers that aren\'t part of the custom endpoint
-- group. All other eligible instances are reachable through the custom
-- endpoint. Only relevant if the list of static members is empty.
--
-- 'endpointType', 'dBClusterEndpoint_endpointType' - The type of the endpoint. One of: @READER@, @WRITER@, @CUSTOM@.
--
-- 'customEndpointType', 'dBClusterEndpoint_customEndpointType' - The type associated with a custom endpoint. One of: @READER@, @WRITER@,
-- @ANY@.
--
-- 'dBClusterEndpointArn', 'dBClusterEndpoint_dBClusterEndpointArn' - The Amazon Resource Name (ARN) for the endpoint.
--
-- 'dBClusterIdentifier', 'dBClusterEndpoint_dBClusterIdentifier' - The DB cluster identifier of the DB cluster associated with the
-- endpoint. This parameter is stored as a lowercase string.
--
-- 'dBClusterEndpointResourceIdentifier', 'dBClusterEndpoint_dBClusterEndpointResourceIdentifier' - A unique system-generated identifier for an endpoint. It remains the
-- same for the whole life of the endpoint.
--
-- 'endpoint', 'dBClusterEndpoint_endpoint' - The DNS address of the endpoint.
--
-- 'staticMembers', 'dBClusterEndpoint_staticMembers' - List of DB instance identifiers that are part of the custom endpoint
-- group.
newDBClusterEndpoint ::
  DBClusterEndpoint
newDBClusterEndpoint =
  DBClusterEndpoint'
    { dBClusterEndpointIdentifier =
        Prelude.Nothing,
      status = Prelude.Nothing,
      excludedMembers = Prelude.Nothing,
      endpointType = Prelude.Nothing,
      customEndpointType = Prelude.Nothing,
      dBClusterEndpointArn = Prelude.Nothing,
      dBClusterIdentifier = Prelude.Nothing,
      dBClusterEndpointResourceIdentifier =
        Prelude.Nothing,
      endpoint = Prelude.Nothing,
      staticMembers = Prelude.Nothing
    }

-- | The identifier associated with the endpoint. This parameter is stored as
-- a lowercase string.
dBClusterEndpoint_dBClusterEndpointIdentifier :: Lens.Lens' DBClusterEndpoint (Prelude.Maybe Prelude.Text)
dBClusterEndpoint_dBClusterEndpointIdentifier = Lens.lens (\DBClusterEndpoint' {dBClusterEndpointIdentifier} -> dBClusterEndpointIdentifier) (\s@DBClusterEndpoint' {} a -> s {dBClusterEndpointIdentifier = a} :: DBClusterEndpoint)

-- | The current status of the endpoint. One of: @creating@, @available@,
-- @deleting@, @inactive@, @modifying@. The @inactive@ state applies to an
-- endpoint that can\'t be used for a certain kind of cluster, such as a
-- @writer@ endpoint for a read-only secondary cluster in a global
-- database.
dBClusterEndpoint_status :: Lens.Lens' DBClusterEndpoint (Prelude.Maybe Prelude.Text)
dBClusterEndpoint_status = Lens.lens (\DBClusterEndpoint' {status} -> status) (\s@DBClusterEndpoint' {} a -> s {status = a} :: DBClusterEndpoint)

-- | List of DB instance identifiers that aren\'t part of the custom endpoint
-- group. All other eligible instances are reachable through the custom
-- endpoint. Only relevant if the list of static members is empty.
dBClusterEndpoint_excludedMembers :: Lens.Lens' DBClusterEndpoint (Prelude.Maybe [Prelude.Text])
dBClusterEndpoint_excludedMembers = Lens.lens (\DBClusterEndpoint' {excludedMembers} -> excludedMembers) (\s@DBClusterEndpoint' {} a -> s {excludedMembers = a} :: DBClusterEndpoint) Prelude.. Lens.mapping Prelude._Coerce

-- | The type of the endpoint. One of: @READER@, @WRITER@, @CUSTOM@.
dBClusterEndpoint_endpointType :: Lens.Lens' DBClusterEndpoint (Prelude.Maybe Prelude.Text)
dBClusterEndpoint_endpointType = Lens.lens (\DBClusterEndpoint' {endpointType} -> endpointType) (\s@DBClusterEndpoint' {} a -> s {endpointType = a} :: DBClusterEndpoint)

-- | The type associated with a custom endpoint. One of: @READER@, @WRITER@,
-- @ANY@.
dBClusterEndpoint_customEndpointType :: Lens.Lens' DBClusterEndpoint (Prelude.Maybe Prelude.Text)
dBClusterEndpoint_customEndpointType = Lens.lens (\DBClusterEndpoint' {customEndpointType} -> customEndpointType) (\s@DBClusterEndpoint' {} a -> s {customEndpointType = a} :: DBClusterEndpoint)

-- | The Amazon Resource Name (ARN) for the endpoint.
dBClusterEndpoint_dBClusterEndpointArn :: Lens.Lens' DBClusterEndpoint (Prelude.Maybe Prelude.Text)
dBClusterEndpoint_dBClusterEndpointArn = Lens.lens (\DBClusterEndpoint' {dBClusterEndpointArn} -> dBClusterEndpointArn) (\s@DBClusterEndpoint' {} a -> s {dBClusterEndpointArn = a} :: DBClusterEndpoint)

-- | The DB cluster identifier of the DB cluster associated with the
-- endpoint. This parameter is stored as a lowercase string.
dBClusterEndpoint_dBClusterIdentifier :: Lens.Lens' DBClusterEndpoint (Prelude.Maybe Prelude.Text)
dBClusterEndpoint_dBClusterIdentifier = Lens.lens (\DBClusterEndpoint' {dBClusterIdentifier} -> dBClusterIdentifier) (\s@DBClusterEndpoint' {} a -> s {dBClusterIdentifier = a} :: DBClusterEndpoint)

-- | A unique system-generated identifier for an endpoint. It remains the
-- same for the whole life of the endpoint.
dBClusterEndpoint_dBClusterEndpointResourceIdentifier :: Lens.Lens' DBClusterEndpoint (Prelude.Maybe Prelude.Text)
dBClusterEndpoint_dBClusterEndpointResourceIdentifier = Lens.lens (\DBClusterEndpoint' {dBClusterEndpointResourceIdentifier} -> dBClusterEndpointResourceIdentifier) (\s@DBClusterEndpoint' {} a -> s {dBClusterEndpointResourceIdentifier = a} :: DBClusterEndpoint)

-- | The DNS address of the endpoint.
dBClusterEndpoint_endpoint :: Lens.Lens' DBClusterEndpoint (Prelude.Maybe Prelude.Text)
dBClusterEndpoint_endpoint = Lens.lens (\DBClusterEndpoint' {endpoint} -> endpoint) (\s@DBClusterEndpoint' {} a -> s {endpoint = a} :: DBClusterEndpoint)

-- | List of DB instance identifiers that are part of the custom endpoint
-- group.
dBClusterEndpoint_staticMembers :: Lens.Lens' DBClusterEndpoint (Prelude.Maybe [Prelude.Text])
dBClusterEndpoint_staticMembers = Lens.lens (\DBClusterEndpoint' {staticMembers} -> staticMembers) (\s@DBClusterEndpoint' {} a -> s {staticMembers = a} :: DBClusterEndpoint) Prelude.. Lens.mapping Prelude._Coerce

instance Prelude.FromXML DBClusterEndpoint where
  parseXML x =
    DBClusterEndpoint'
      Prelude.<$> (x Prelude..@? "DBClusterEndpointIdentifier")
      Prelude.<*> (x Prelude..@? "Status")
      Prelude.<*> ( x Prelude..@? "ExcludedMembers"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may (Prelude.parseXMLList "member")
                  )
      Prelude.<*> (x Prelude..@? "EndpointType")
      Prelude.<*> (x Prelude..@? "CustomEndpointType")
      Prelude.<*> (x Prelude..@? "DBClusterEndpointArn")
      Prelude.<*> (x Prelude..@? "DBClusterIdentifier")
      Prelude.<*> (x Prelude..@? "DBClusterEndpointResourceIdentifier")
      Prelude.<*> (x Prelude..@? "Endpoint")
      Prelude.<*> ( x Prelude..@? "StaticMembers"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may (Prelude.parseXMLList "member")
                  )

instance Prelude.Hashable DBClusterEndpoint

instance Prelude.NFData DBClusterEndpoint
