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
-- Module      : Network.AWS.RDS.CreateDBSubnetGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new DB subnet group. DB subnet groups must contain at least
-- one subnet in at least two AZs in the AWS Region.
module Network.AWS.RDS.CreateDBSubnetGroup
  ( -- * Creating a Request
    CreateDBSubnetGroup (..),
    newCreateDBSubnetGroup,

    -- * Request Lenses
    createDBSubnetGroup_tags,
    createDBSubnetGroup_dBSubnetGroupName,
    createDBSubnetGroup_dBSubnetGroupDescription,
    createDBSubnetGroup_subnetIds,

    -- * Destructuring the Response
    CreateDBSubnetGroupResponse (..),
    newCreateDBSubnetGroupResponse,

    -- * Response Lenses
    createDBSubnetGroupResponse_dBSubnetGroup,
    createDBSubnetGroupResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types
import Network.AWS.RDS.Types.DBSubnetGroup
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newCreateDBSubnetGroup' smart constructor.
data CreateDBSubnetGroup = CreateDBSubnetGroup'
  { -- | Tags to assign to the DB subnet group.
    tags :: Prelude.Maybe [Tag],
    -- | The name for the DB subnet group. This value is stored as a lowercase
    -- string.
    --
    -- Constraints: Must contain no more than 255 letters, numbers, periods,
    -- underscores, spaces, or hyphens. Must not be default.
    --
    -- Example: @mySubnetgroup@
    dBSubnetGroupName :: Prelude.Text,
    -- | The description for the DB subnet group.
    dBSubnetGroupDescription :: Prelude.Text,
    -- | The EC2 Subnet IDs for the DB subnet group.
    subnetIds :: [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CreateDBSubnetGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createDBSubnetGroup_tags' - Tags to assign to the DB subnet group.
--
-- 'dBSubnetGroupName', 'createDBSubnetGroup_dBSubnetGroupName' - The name for the DB subnet group. This value is stored as a lowercase
-- string.
--
-- Constraints: Must contain no more than 255 letters, numbers, periods,
-- underscores, spaces, or hyphens. Must not be default.
--
-- Example: @mySubnetgroup@
--
-- 'dBSubnetGroupDescription', 'createDBSubnetGroup_dBSubnetGroupDescription' - The description for the DB subnet group.
--
-- 'subnetIds', 'createDBSubnetGroup_subnetIds' - The EC2 Subnet IDs for the DB subnet group.
newCreateDBSubnetGroup ::
  -- | 'dBSubnetGroupName'
  Prelude.Text ->
  -- | 'dBSubnetGroupDescription'
  Prelude.Text ->
  CreateDBSubnetGroup
newCreateDBSubnetGroup
  pDBSubnetGroupName_
  pDBSubnetGroupDescription_ =
    CreateDBSubnetGroup'
      { tags = Prelude.Nothing,
        dBSubnetGroupName = pDBSubnetGroupName_,
        dBSubnetGroupDescription =
          pDBSubnetGroupDescription_,
        subnetIds = Prelude.mempty
      }

-- | Tags to assign to the DB subnet group.
createDBSubnetGroup_tags :: Lens.Lens' CreateDBSubnetGroup (Prelude.Maybe [Tag])
createDBSubnetGroup_tags = Lens.lens (\CreateDBSubnetGroup' {tags} -> tags) (\s@CreateDBSubnetGroup' {} a -> s {tags = a} :: CreateDBSubnetGroup) Prelude.. Lens.mapping Prelude._Coerce

-- | The name for the DB subnet group. This value is stored as a lowercase
-- string.
--
-- Constraints: Must contain no more than 255 letters, numbers, periods,
-- underscores, spaces, or hyphens. Must not be default.
--
-- Example: @mySubnetgroup@
createDBSubnetGroup_dBSubnetGroupName :: Lens.Lens' CreateDBSubnetGroup Prelude.Text
createDBSubnetGroup_dBSubnetGroupName = Lens.lens (\CreateDBSubnetGroup' {dBSubnetGroupName} -> dBSubnetGroupName) (\s@CreateDBSubnetGroup' {} a -> s {dBSubnetGroupName = a} :: CreateDBSubnetGroup)

-- | The description for the DB subnet group.
createDBSubnetGroup_dBSubnetGroupDescription :: Lens.Lens' CreateDBSubnetGroup Prelude.Text
createDBSubnetGroup_dBSubnetGroupDescription = Lens.lens (\CreateDBSubnetGroup' {dBSubnetGroupDescription} -> dBSubnetGroupDescription) (\s@CreateDBSubnetGroup' {} a -> s {dBSubnetGroupDescription = a} :: CreateDBSubnetGroup)

-- | The EC2 Subnet IDs for the DB subnet group.
createDBSubnetGroup_subnetIds :: Lens.Lens' CreateDBSubnetGroup [Prelude.Text]
createDBSubnetGroup_subnetIds = Lens.lens (\CreateDBSubnetGroup' {subnetIds} -> subnetIds) (\s@CreateDBSubnetGroup' {} a -> s {subnetIds = a} :: CreateDBSubnetGroup) Prelude.. Prelude._Coerce

instance Prelude.AWSRequest CreateDBSubnetGroup where
  type
    Rs CreateDBSubnetGroup =
      CreateDBSubnetGroupResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "CreateDBSubnetGroupResult"
      ( \s h x ->
          CreateDBSubnetGroupResponse'
            Prelude.<$> (x Prelude..@? "DBSubnetGroup")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateDBSubnetGroup

instance Prelude.NFData CreateDBSubnetGroup

instance Prelude.ToHeaders CreateDBSubnetGroup where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath CreateDBSubnetGroup where
  toPath = Prelude.const "/"

instance Prelude.ToQuery CreateDBSubnetGroup where
  toQuery CreateDBSubnetGroup' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("CreateDBSubnetGroup" :: Prelude.ByteString),
        "Version"
          Prelude.=: ("2014-10-31" :: Prelude.ByteString),
        "Tags"
          Prelude.=: Prelude.toQuery
            (Prelude.toQueryList "Tag" Prelude.<$> tags),
        "DBSubnetGroupName" Prelude.=: dBSubnetGroupName,
        "DBSubnetGroupDescription"
          Prelude.=: dBSubnetGroupDescription,
        "SubnetIds"
          Prelude.=: Prelude.toQueryList "SubnetIdentifier" subnetIds
      ]

-- | /See:/ 'newCreateDBSubnetGroupResponse' smart constructor.
data CreateDBSubnetGroupResponse = CreateDBSubnetGroupResponse'
  { dBSubnetGroup :: Prelude.Maybe DBSubnetGroup,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CreateDBSubnetGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBSubnetGroup', 'createDBSubnetGroupResponse_dBSubnetGroup' - Undocumented member.
--
-- 'httpStatus', 'createDBSubnetGroupResponse_httpStatus' - The response's http status code.
newCreateDBSubnetGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateDBSubnetGroupResponse
newCreateDBSubnetGroupResponse pHttpStatus_ =
  CreateDBSubnetGroupResponse'
    { dBSubnetGroup =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
createDBSubnetGroupResponse_dBSubnetGroup :: Lens.Lens' CreateDBSubnetGroupResponse (Prelude.Maybe DBSubnetGroup)
createDBSubnetGroupResponse_dBSubnetGroup = Lens.lens (\CreateDBSubnetGroupResponse' {dBSubnetGroup} -> dBSubnetGroup) (\s@CreateDBSubnetGroupResponse' {} a -> s {dBSubnetGroup = a} :: CreateDBSubnetGroupResponse)

-- | The response's http status code.
createDBSubnetGroupResponse_httpStatus :: Lens.Lens' CreateDBSubnetGroupResponse Prelude.Int
createDBSubnetGroupResponse_httpStatus = Lens.lens (\CreateDBSubnetGroupResponse' {httpStatus} -> httpStatus) (\s@CreateDBSubnetGroupResponse' {} a -> s {httpStatus = a} :: CreateDBSubnetGroupResponse)

instance Prelude.NFData CreateDBSubnetGroupResponse
