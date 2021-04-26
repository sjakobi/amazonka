{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.CreateDBParameterGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new DB parameter group.
--
-- A DB parameter group is initially created with the default parameters
-- for the database engine used by the DB instance. To provide custom
-- values for any of the parameters, you must modify the group after
-- creating it using /ModifyDBParameterGroup/. Once you\'ve created a DB
-- parameter group, you need to associate it with your DB instance using
-- /ModifyDBInstance/. When you associate a new DB parameter group with a
-- running DB instance, you need to reboot the DB instance without failover
-- for the new DB parameter group and associated settings to take effect.
--
-- After you create a DB parameter group, you should wait at least 5
-- minutes before creating your first DB instance that uses that DB
-- parameter group as the default parameter group. This allows Amazon RDS
-- to fully complete the create action before the parameter group is used
-- as the default for a new DB instance. This is especially important for
-- parameters that are critical when creating the default database for a DB
-- instance, such as the character set for the default database defined by
-- the @character_set_database@ parameter. You can use the /Parameter
-- Groups/ option of the
-- <https://console.aws.amazon.com/rds/ Amazon RDS console> or the
-- /DescribeDBParameters/ command to verify that your DB parameter group
-- has been created or modified.
module Network.AWS.RDS.CreateDBParameterGroup
  ( -- * Creating a Request
    CreateDBParameterGroup (..),
    newCreateDBParameterGroup,

    -- * Request Lenses
    createDBParameterGroup_tags,
    createDBParameterGroup_dBParameterGroupName,
    createDBParameterGroup_dBParameterGroupFamily,
    createDBParameterGroup_description,

    -- * Destructuring the Response
    CreateDBParameterGroupResponse (..),
    newCreateDBParameterGroupResponse,

    -- * Response Lenses
    createDBParameterGroupResponse_dBParameterGroup,
    createDBParameterGroupResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types
import Network.AWS.RDS.Types.DBParameterGroup
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newCreateDBParameterGroup' smart constructor.
data CreateDBParameterGroup = CreateDBParameterGroup'
  { -- | Tags to assign to the DB parameter group.
    tags :: Prelude.Maybe [Tag],
    -- | The name of the DB parameter group.
    --
    -- Constraints:
    --
    -- -   Must be 1 to 255 letters, numbers, or hyphens.
    --
    -- -   First character must be a letter
    --
    -- -   Can\'t end with a hyphen or contain two consecutive hyphens
    --
    -- This value is stored as a lowercase string.
    dBParameterGroupName :: Prelude.Text,
    -- | The DB parameter group family name. A DB parameter group can be
    -- associated with one and only one DB parameter group family, and can be
    -- applied only to a DB instance running a database engine and engine
    -- version compatible with that DB parameter group family.
    --
    -- To list all of the available parameter group families, use the following
    -- command:
    --
    -- @aws rds describe-db-engine-versions --query \"DBEngineVersions[].DBParameterGroupFamily\"@
    --
    -- The output contains duplicates.
    dBParameterGroupFamily :: Prelude.Text,
    -- | The description for the DB parameter group.
    description :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CreateDBParameterGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createDBParameterGroup_tags' - Tags to assign to the DB parameter group.
--
-- 'dBParameterGroupName', 'createDBParameterGroup_dBParameterGroupName' - The name of the DB parameter group.
--
-- Constraints:
--
-- -   Must be 1 to 255 letters, numbers, or hyphens.
--
-- -   First character must be a letter
--
-- -   Can\'t end with a hyphen or contain two consecutive hyphens
--
-- This value is stored as a lowercase string.
--
-- 'dBParameterGroupFamily', 'createDBParameterGroup_dBParameterGroupFamily' - The DB parameter group family name. A DB parameter group can be
-- associated with one and only one DB parameter group family, and can be
-- applied only to a DB instance running a database engine and engine
-- version compatible with that DB parameter group family.
--
-- To list all of the available parameter group families, use the following
-- command:
--
-- @aws rds describe-db-engine-versions --query \"DBEngineVersions[].DBParameterGroupFamily\"@
--
-- The output contains duplicates.
--
-- 'description', 'createDBParameterGroup_description' - The description for the DB parameter group.
newCreateDBParameterGroup ::
  -- | 'dBParameterGroupName'
  Prelude.Text ->
  -- | 'dBParameterGroupFamily'
  Prelude.Text ->
  -- | 'description'
  Prelude.Text ->
  CreateDBParameterGroup
newCreateDBParameterGroup
  pDBParameterGroupName_
  pDBParameterGroupFamily_
  pDescription_ =
    CreateDBParameterGroup'
      { tags = Prelude.Nothing,
        dBParameterGroupName = pDBParameterGroupName_,
        dBParameterGroupFamily = pDBParameterGroupFamily_,
        description = pDescription_
      }

-- | Tags to assign to the DB parameter group.
createDBParameterGroup_tags :: Lens.Lens' CreateDBParameterGroup (Prelude.Maybe [Tag])
createDBParameterGroup_tags = Lens.lens (\CreateDBParameterGroup' {tags} -> tags) (\s@CreateDBParameterGroup' {} a -> s {tags = a} :: CreateDBParameterGroup) Prelude.. Lens.mapping Prelude._Coerce

-- | The name of the DB parameter group.
--
-- Constraints:
--
-- -   Must be 1 to 255 letters, numbers, or hyphens.
--
-- -   First character must be a letter
--
-- -   Can\'t end with a hyphen or contain two consecutive hyphens
--
-- This value is stored as a lowercase string.
createDBParameterGroup_dBParameterGroupName :: Lens.Lens' CreateDBParameterGroup Prelude.Text
createDBParameterGroup_dBParameterGroupName = Lens.lens (\CreateDBParameterGroup' {dBParameterGroupName} -> dBParameterGroupName) (\s@CreateDBParameterGroup' {} a -> s {dBParameterGroupName = a} :: CreateDBParameterGroup)

-- | The DB parameter group family name. A DB parameter group can be
-- associated with one and only one DB parameter group family, and can be
-- applied only to a DB instance running a database engine and engine
-- version compatible with that DB parameter group family.
--
-- To list all of the available parameter group families, use the following
-- command:
--
-- @aws rds describe-db-engine-versions --query \"DBEngineVersions[].DBParameterGroupFamily\"@
--
-- The output contains duplicates.
createDBParameterGroup_dBParameterGroupFamily :: Lens.Lens' CreateDBParameterGroup Prelude.Text
createDBParameterGroup_dBParameterGroupFamily = Lens.lens (\CreateDBParameterGroup' {dBParameterGroupFamily} -> dBParameterGroupFamily) (\s@CreateDBParameterGroup' {} a -> s {dBParameterGroupFamily = a} :: CreateDBParameterGroup)

-- | The description for the DB parameter group.
createDBParameterGroup_description :: Lens.Lens' CreateDBParameterGroup Prelude.Text
createDBParameterGroup_description = Lens.lens (\CreateDBParameterGroup' {description} -> description) (\s@CreateDBParameterGroup' {} a -> s {description = a} :: CreateDBParameterGroup)

instance Prelude.AWSRequest CreateDBParameterGroup where
  type
    Rs CreateDBParameterGroup =
      CreateDBParameterGroupResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "CreateDBParameterGroupResult"
      ( \s h x ->
          CreateDBParameterGroupResponse'
            Prelude.<$> (x Prelude..@? "DBParameterGroup")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateDBParameterGroup

instance Prelude.NFData CreateDBParameterGroup

instance Prelude.ToHeaders CreateDBParameterGroup where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath CreateDBParameterGroup where
  toPath = Prelude.const "/"

instance Prelude.ToQuery CreateDBParameterGroup where
  toQuery CreateDBParameterGroup' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("CreateDBParameterGroup" :: Prelude.ByteString),
        "Version"
          Prelude.=: ("2014-10-31" :: Prelude.ByteString),
        "Tags"
          Prelude.=: Prelude.toQuery
            (Prelude.toQueryList "Tag" Prelude.<$> tags),
        "DBParameterGroupName"
          Prelude.=: dBParameterGroupName,
        "DBParameterGroupFamily"
          Prelude.=: dBParameterGroupFamily,
        "Description" Prelude.=: description
      ]

-- | /See:/ 'newCreateDBParameterGroupResponse' smart constructor.
data CreateDBParameterGroupResponse = CreateDBParameterGroupResponse'
  { dBParameterGroup :: Prelude.Maybe DBParameterGroup,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CreateDBParameterGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBParameterGroup', 'createDBParameterGroupResponse_dBParameterGroup' - Undocumented member.
--
-- 'httpStatus', 'createDBParameterGroupResponse_httpStatus' - The response's http status code.
newCreateDBParameterGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateDBParameterGroupResponse
newCreateDBParameterGroupResponse pHttpStatus_ =
  CreateDBParameterGroupResponse'
    { dBParameterGroup =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
createDBParameterGroupResponse_dBParameterGroup :: Lens.Lens' CreateDBParameterGroupResponse (Prelude.Maybe DBParameterGroup)
createDBParameterGroupResponse_dBParameterGroup = Lens.lens (\CreateDBParameterGroupResponse' {dBParameterGroup} -> dBParameterGroup) (\s@CreateDBParameterGroupResponse' {} a -> s {dBParameterGroup = a} :: CreateDBParameterGroupResponse)

-- | The response's http status code.
createDBParameterGroupResponse_httpStatus :: Lens.Lens' CreateDBParameterGroupResponse Prelude.Int
createDBParameterGroupResponse_httpStatus = Lens.lens (\CreateDBParameterGroupResponse' {httpStatus} -> httpStatus) (\s@CreateDBParameterGroupResponse' {} a -> s {httpStatus = a} :: CreateDBParameterGroupResponse)

instance
  Prelude.NFData
    CreateDBParameterGroupResponse
