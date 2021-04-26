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
-- Module      : Network.AWS.RDS.DeleteDBSecurityGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a DB security group.
--
-- The specified DB security group must not be associated with any DB
-- instances.
module Network.AWS.RDS.DeleteDBSecurityGroup
  ( -- * Creating a Request
    DeleteDBSecurityGroup (..),
    newDeleteDBSecurityGroup,

    -- * Request Lenses
    deleteDBSecurityGroup_dBSecurityGroupName,

    -- * Destructuring the Response
    DeleteDBSecurityGroupResponse (..),
    newDeleteDBSecurityGroupResponse,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newDeleteDBSecurityGroup' smart constructor.
data DeleteDBSecurityGroup = DeleteDBSecurityGroup'
  { -- | The name of the DB security group to delete.
    --
    -- You can\'t delete the default DB security group.
    --
    -- Constraints:
    --
    -- -   Must be 1 to 255 letters, numbers, or hyphens.
    --
    -- -   First character must be a letter
    --
    -- -   Can\'t end with a hyphen or contain two consecutive hyphens
    --
    -- -   Must not be \"Default\"
    dBSecurityGroupName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DeleteDBSecurityGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBSecurityGroupName', 'deleteDBSecurityGroup_dBSecurityGroupName' - The name of the DB security group to delete.
--
-- You can\'t delete the default DB security group.
--
-- Constraints:
--
-- -   Must be 1 to 255 letters, numbers, or hyphens.
--
-- -   First character must be a letter
--
-- -   Can\'t end with a hyphen or contain two consecutive hyphens
--
-- -   Must not be \"Default\"
newDeleteDBSecurityGroup ::
  -- | 'dBSecurityGroupName'
  Prelude.Text ->
  DeleteDBSecurityGroup
newDeleteDBSecurityGroup pDBSecurityGroupName_ =
  DeleteDBSecurityGroup'
    { dBSecurityGroupName =
        pDBSecurityGroupName_
    }

-- | The name of the DB security group to delete.
--
-- You can\'t delete the default DB security group.
--
-- Constraints:
--
-- -   Must be 1 to 255 letters, numbers, or hyphens.
--
-- -   First character must be a letter
--
-- -   Can\'t end with a hyphen or contain two consecutive hyphens
--
-- -   Must not be \"Default\"
deleteDBSecurityGroup_dBSecurityGroupName :: Lens.Lens' DeleteDBSecurityGroup Prelude.Text
deleteDBSecurityGroup_dBSecurityGroupName = Lens.lens (\DeleteDBSecurityGroup' {dBSecurityGroupName} -> dBSecurityGroupName) (\s@DeleteDBSecurityGroup' {} a -> s {dBSecurityGroupName = a} :: DeleteDBSecurityGroup)

instance Prelude.AWSRequest DeleteDBSecurityGroup where
  type
    Rs DeleteDBSecurityGroup =
      DeleteDBSecurityGroupResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveNull DeleteDBSecurityGroupResponse'

instance Prelude.Hashable DeleteDBSecurityGroup

instance Prelude.NFData DeleteDBSecurityGroup

instance Prelude.ToHeaders DeleteDBSecurityGroup where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath DeleteDBSecurityGroup where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DeleteDBSecurityGroup where
  toQuery DeleteDBSecurityGroup' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("DeleteDBSecurityGroup" :: Prelude.ByteString),
        "Version"
          Prelude.=: ("2014-10-31" :: Prelude.ByteString),
        "DBSecurityGroupName" Prelude.=: dBSecurityGroupName
      ]

-- | /See:/ 'newDeleteDBSecurityGroupResponse' smart constructor.
data DeleteDBSecurityGroupResponse = DeleteDBSecurityGroupResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DeleteDBSecurityGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteDBSecurityGroupResponse ::
  DeleteDBSecurityGroupResponse
newDeleteDBSecurityGroupResponse =
  DeleteDBSecurityGroupResponse'

instance Prelude.NFData DeleteDBSecurityGroupResponse
