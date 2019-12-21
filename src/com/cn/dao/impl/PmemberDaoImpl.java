package com.cn.dao.impl;

import java.sql.Connection;
import java.sql.SQLException;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.cn.dao.PmemberDao;
import com.cn.domain.Pmember;
import com.cn.util.JDBCUtil;

/**
 * @ClassName: PmemberDaoImpl
 * @Description: PmemberDao的实现类
 * @author: ljy
 * @date: 2019年9月14日 下午10:45:42
 */
public class PmemberDaoImpl implements PmemberDao {

    private Connection conn = null;
    private QueryRunner queryRunner = null;

    @Override
    public int add(Pmember pmember) throws SQLException {
        conn = JDBCUtil.getConnection();
        queryRunner = new QueryRunner();
        int recordNumber = queryRunner.update(conn, "insert into pmember (memberid,realname,sex,age,idcard, phone, email) values (?,?,?,?,?,?,?)",
                pmember.getMemberId(), pmember.getRealName(), pmember.getSex(), pmember.getAge(), pmember.getIdCard(), pmember.getPhone(), pmember.getEmail());
        DbUtils.close(conn);
        return recordNumber;
    }

    @Override
    public int delete(Integer pmemberId) throws SQLException {
        conn = JDBCUtil.getConnection();
        queryRunner = new QueryRunner();
        int recordNumber = queryRunner.update(conn, "delete from pmember where pmemberid=?", pmemberId);
        DbUtils.close(conn);
        return recordNumber;
    }

    @Override
    public int update(Pmember pmember) throws SQLException {
        conn = JDBCUtil.getConnection();
        queryRunner = new QueryRunner();
        int recordNumber = queryRunner.update(conn, "update pmember set memberid=?,realname=?,sex=?,idcard=?,phone=?,email=? where pmemberid=?",
                pmember.getMemberId(), pmember.getRealName(), pmember.getSex(), pmember.getIdCard(),pmember.getPhone(),pmember.getEmail(), pmember.getPmemberId());
        DbUtils.close(conn);
        return recordNumber;
    }

    @Override
    public Pmember getPmemberByMemberId(Integer memberId) throws SQLException {
        conn = JDBCUtil.getConnection();
        queryRunner = new QueryRunner();
        Pmember pmember = queryRunner.query(conn, "select * from pmember where memberId=?", new BeanHandler<Pmember>(Pmember.class), memberId);
        DbUtils.close(conn);
        return pmember;
    }

    @Override
    public Pmember getById(Integer pmemberId) throws SQLException {
        conn = JDBCUtil.getConnection();
        queryRunner = new QueryRunner();
        Pmember pmember = queryRunner.query(conn, "select * from pmember where pmemberid=?", new BeanHandler<Pmember>(Pmember.class), pmemberId);
        DbUtils.close(conn);
        return pmember;
    }

}
